connection: "vacols-prod-dms"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: decass {
  join: folder {
    relationship: many_to_one
    sql_on: ${folder.ticknum} = ${decass.defolder} ;;
  }

  join: brieff {
    relationship: many_to_one
    sql_on: ${brieff.bfkey} = ${decass.defolder} ;;
  }

  join: staff {
    relationship: many_to_one
    sql_on: ${staff.sattyid} = ${decass.deatty}
    ;;
  }
}
explore: folder {}

explore: brieff {}

explore: staff {}
