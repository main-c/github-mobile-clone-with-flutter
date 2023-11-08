import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 41, 46),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
        leading: const Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/github_logo.png"),
            )),
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 300,
          backgroundColor: const Color.fromARGB(255, 36, 41, 46),
          flexibleSpace: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: const Color.fromARGB(255, 36, 41, 46),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 7,
                      left: MediaQuery.of(context).size.width / 2 - 160,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4DAB60),
                            textStyle: const TextStyle(fontSize: 12),
                            fixedSize: const Size(70, 19),
                          ),
                          onPressed: () {},
                          child: const Text("Follow")),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 7,
                        left: MediaQuery.of(context).size.width / 2 + 90,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE069C6),
                              textStyle: const TextStyle(fontSize: 12),
                              fixedSize: const Size(70, 19),
                            ),
                            onPressed: () {},
                            child: const Text("Follow"))),
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  text: 'Yannik KADJIE',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'PRO',
                        style: TextStyle(
                            backgroundColor: Color(0xFF6D3DC0),
                            fontSize: 8,
                            color: Colors.white)),
                  ],
                ),
              ),
              Text(
                "Yaounde, Cameroon",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              Text(
                "Backend & Mobile Developer",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
