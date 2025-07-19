$dialog show @s {\
  "type": "minecraft:notice",\
  "title": {\
    "translate": "gui.stats"\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.not_paused"\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": ""\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.fish_caught"\
          },\
          "$(fish_caught)"\
        ]\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.aberrations_caught"\
          },\
          "$(aberrations_caught)"\
        ]\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.total_fish_caught"\
          },\
          "$(total_fish_caught)"\
        ]\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.fish_chopped"\
          },\
          "$(fish_chopped)"\
        ]\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.items_dredged"\
          },\
          "$(items_dredged)"\
        ]\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.coffers_opened"\
          },\
          "$(coffers_opened)"\
        ]\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "ui.thallium.colon",\
        "with": [\
          {\
            "translate": "statistics.fathoms.rituals_performed"\
          },\
          "$(rituals_performed)"\
        ]\
      }\
    }\
  ],\
  "pause": false\
}