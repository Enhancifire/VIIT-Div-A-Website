import 'package:div_a_site/constants.dart';
import 'package:div_a_site/screens/home/widgets/notes/subjectList.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final items = [
    "Sem 3",
    "Sem 4",
    "Sem 5",
    "Sem 6",
    "Sem 7",
    "Sem 8",
  ];

  var notes = {
    "Sem 3": [
      [
        "DM",
        "https://drive.google.com/drive/folders/1AzLJKX4iePjWXKEy46iDSEUDHtpnd42y?usp=sharing"
      ],
      [
        "DS",
        "https://drive.google.com/drive/folders/1Aq3-_-NtQmjSJBpAU1W-IOzfAEX8fNXy?usp=sharing"
      ],
      [
        "MP",
        "https://drive.google.com/drive/folders/1EwuTOc8-0BwLfYQfJ0f7gfq9L2nPp6w0?usp=sharing"
      ],
      [
        "DBMS",
        "https://drive.google.com/drive/folders/1ECxdgw-bknwU6y2xBWvH_NBCxgrWVEZ5?usp=sharing"
      ],
      [
        "UHV2",
        "https://drive.google.com/drive/folders/1YkJ84W53eNB2wAAptmjPrMFympAKzoZl?usp=sharing"
      ],
      [
        "DV",
        "https://drive.google.com/drive/folders/14MYJaNwkBxvgfiDY08vsQJRpnpSj55iH?usp=sharing"
      ],
      [
        "DST",
        "https://drive.google.com/drive/folders/1DoB7jfpVW5bwLle1P50yj1zkxdAVMktZ?usp=sharing"
      ],
    ],
    "Sem 4": [
      [
        "PAS",
        "https://drive.google.com/drive/folders/17vgxKhENBKzqNDeFP_tIqAl8Zx0tHcSc?usp=sharing"
      ],
      [
        "ADS",
        "https://drive.google.com/drive/folders/1Iu_ggw4p53zE1doS01MJlZ44qx18VbJC?usp=sharing"
      ],
      [
        "FCN",
        "https://drive.google.com/drive/folders/1mcmIeOtp4kyMfmqhrRfZqT0EqPWMuyZ9?usp=sharing"
      ],
      [
        "SE",
        "https://drive.google.com/drive/folders/13Gn0aOPoP2gQgOHAfTBUTrNJj_9Gt97W?usp=sharing"
      ],
      [
        "OS",
        "https://drive.google.com/drive/folders/10CCbCh1-al_vrgUeNe2RphFz5mkK9N0l?usp=sharing"
      ],
      [
        "WT",
        "https://drive.google.com/drive/folders/1scSuUAN3oHwQSBO1Z7ViJk4-l9CLBu9A?usp=sharing"
      ],
      [
        "SS",
        "https://drive.google.com/drive/folders/1KFzVDdPUjH3U_Xx0j1ME5AFrssLXCwJw?usp=sharing"
      ],
    ],
    "Sem 5": [],
    "Sem 6": [],
    "Sem 7": [],
    "Sem 8": [],
    "": []
  };

  String value = "Sem 4";
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(color: primaryColor),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 500,
          color: bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Notes',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: primaryColor,
                    ),
              ),
              DropdownButton<String>(
                isExpanded: true,
                value: value,
                dropdownColor: bgColor,
                items: items.map(buildMenuItem).toList(),
                onChanged: (val) => setState(
                  () => value = val!,
                ),
              ),
              SubjectList(subList: notes[value]!),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
