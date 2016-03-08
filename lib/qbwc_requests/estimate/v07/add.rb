module QbwcRequests
  module Estimate
    module V07
      class Add < QbwcRequests::Base
        field   :def_macro
        ref_to  :customer, 209
        ref_to  :class, 159
        ref_to  :template, 31
        field   :txn_date
        field   :ref_number
        field   :bill_address
        field   :ship_address
        field   :is_active
        field   :po_number
        ref_to  :terms, 31
        field   :due_date
        ref_to  :sales_rep, 5
        field   :fob
        ref_to  :item_sales_tax, 31
        field   :memo
        ref_to  :customer_msg, 101
        field   :is_to_be_emailed
        ref_to  :customer_sales_tax_code, 3
        field   :other
        field   :estimate_line_add
        field   :estimate_line_group_add

        validates :customer_ref, presence: true
        validates :ref_number, length: { maximum: 11 }
        validates :po_number, length: { maximum: 25 }
        validates :fob, length: { maximum: 13 }
        validates :memo, length: { maximum: 4095 }
        validates :other, length: { maximum: 29 }
      end
    end
  end
end
