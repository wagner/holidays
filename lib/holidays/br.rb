# encoding: utf-8
module Holidays

  module BR
    def self.defined_regions
      [:br]
    end

    def self.holidays_by_month
      {
        0 => [
          {:function => lambda { |year| Holidays.easter(year)-48 }, :function_id => "easter(year)-48", :name => "Carnaval", :regions => [:br]},
          {:function => lambda { |year| Holidays.easter(year)-47 }, :function_id => "easter(year)-47", :name => "Carnaval", :regions => [:br]},
          {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Sexta-feira Santa", :regions => [:br]},
          {:function => lambda { |year| Holidays.easter(year)+60 }, :function_id => "easter(year)+60", :name => "Corpus Christi", :regions => [:br]}
        ],
        1 => [
          {:mday => 1, :name => "Dia da Confraternização Universal", :regions => [:br]}
        ],
        4 => [
          {:mday => 21, :name => "Tiradentes", :regions => [:br]}
        ],
        5 => [
          {:mday => 1, :name => "Dia do Trabalho", :regions => [:br]}
        ],
        9 => [
          {:mday => 7, :name => "Independência do Brasil", :regions => [:br]}
        ],
        10 => [
          {:mday => 12, :name => "Nossa Senhora Aparecida", :regions => [:br]}
        ],
        11 => [
          {:mday => 2, :name => "Finados", :regions => [:br]},
          {:mday => 15, :name => "Proclamação da República", :regions => [:br]}
        ],
        12 => [
          {:mday => 25, :name => "Natal", :regions => [:br]}
        ]
      }
    end
  end

end

Holidays.merge_defs(Holidays::BR.defined_regions, Holidays::BR.holidays_by_month)
