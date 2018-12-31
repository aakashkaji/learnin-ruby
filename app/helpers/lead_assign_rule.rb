module LeadAssignRule
  json_has = {
      "required": "some hardcoded rules",
      "optional": [
          {
              "field": "Lead Status",
              "operator": "contains",
              "values":"google"
          },
          {
              "field": "Country",
              "operator": "is",
              "values":["india", "usa"]
          }


      ],
      "assign": {
          "random": true,
          "assign_to":["aakash_user"]
      },

      "pattern": "(1 or(2 and 3)"

  }

end