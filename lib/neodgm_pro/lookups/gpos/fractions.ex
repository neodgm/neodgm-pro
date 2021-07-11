use PixelFont.OTFLayout

lookups NeoDGMPro.Lookups.GPOS.Fractions, for: "GPOS" do
  module do
    import NeoDGMPro.Lookups.GSUB.Fractions, only: [scripts: 0, numr_figures: 0, dnom_figures: 0]
    alias PixelFont.TableSource.GPOS
    alias PixelFont.TableSource.GPOS.PairAdjustment2
    alias PixelFont.TableSource.GPOS.ValueRecord
    alias PixelFont.TableSource.OTFLayout.ClassDefinition
    alias PixelFont.TableSource.OTFLayout.Lookup
  end

  lookup :single_adjustment, "Grouping and decimal for numerator" do
    adjust_uniform ',.', y_placement: 4
  end

  lookup :single_adjustment, "Grouping and decimal for denominator" do
    adjust_uniform ',.', y_placement: -1
  end

  lookup :chained_context, "Grouping and decimal for numerator chain" do
    feature "frac", scripts()

    context do
      backtrack numr_figures()
      input ',.', apply: "Grouping and decimal for numerator"
      lookahead numr_figures()
    end
  end

  lookup :chained_context, "Grouping and decimal for denominator chain" do
    feature "frac", scripts()

    context do
      backtrack dnom_figures()
      input ',.', apply: "Grouping and decimal for denominator"
      lookahead dnom_figures()
    end
  end

  %Lookup{
    owner: GPOS,
    name: "Adjust positioning of fraction slash",
    features: %{"frac" => scripts()},
    type: 2,
    subtables: [
      %PairAdjustment2{
        class_1: %ClassDefinition{
          assignments: %{
            1 => numr_figures(),
            2 => '\u2044'
          }
        },
        class_2: %ClassDefinition{
          assignments: %{
            1 => dnom_figures(),
            2 => '\u2044'
          }
        },
        value_format_1: ~w(x_advance)a,
        value_format_2: [],
        records: %{
          {1, 2} => {%ValueRecord{x_advance: -2}, %ValueRecord{}},
          {2, 1} => {%ValueRecord{x_advance: -2}, %ValueRecord{}}
        }
      }
    ]
  }
end
