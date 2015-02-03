module Notifyer

  # app settings
  HIPCHAT_TOKEN         = ENV["HIPCHAT_TOKEN"]
  HIPCHAT_ROOM_ID       = ENV["HIPCHAT_ROOM_ID"]
  HIPCHAT_ROOM_NAME     = ENV["HIPCHAT_ROOM_NAME"]
  HIPCHAT_MSG_FROM      = ENV["HIPCHAT_MSG_FROM"]
  HIPCHAT_API_ROOMS_MSG = "rooms/message"
  HIPCHAT_API_DEFAULTS  = "format=json"

  # JIRA
  JIRA_HOSTNAME         = ENV["JIRA_HOSTNAME"]
  JIRA_REST_BASE        = ENV["JIRA_REST_BASE"]
  JIRA_CONSUMER_KEY     = ENV["JIRA_CONSUMER_KEY"]
  JIRA_CONSUMER_SECRET  = ENV["JIRA_CONSUMER_SECRET"]

  def self.hipchat
    HipChat::Client.new(HIPCHAT_TOKEN, :api_version => 'v2')[HIPCHAT_ROOM_NAME]
  end

  def self.sender
    HIPCHAT_MSG_FROM
  end

  def fun_hi
    ["hey", "Heeeeey", "hi", "hihihi", "Hello", "sup", "Hey", "herro", "hiiiii", "hola", "Howdy", "Ello", "hiya", "Yooo-ho", "haiiii", "Haaaaayye", "Hii", "heyooo", "hi", "yo", "yo", "hey", "hihihi", "hey sexy ;)", "aloha", "bonjour", "hey", "I", "hey", "whuddup", "whaddup", "wasssuuuppp", "hullo", "heya", "HEYYYYYYY", "hayyyy", "hihasdgiii"].sample
  end

  def fun_everyone
    ["y'all", "guys'n'girls", "everyone", "friends", "devs", "space cowboys"].sample
  end

  def fun_emoji
    ["(allthethings)","(android)","(areyoukiddingme)","(arrington)","(arya)","(ashton)","(awesome)","(awthanks)","(aww)","(awwyiss)","(awyeah)","(badass)","(badjokeeel)","(badpokerface)","(badtime)","(basket)","(beer)","(bicepleft)","(bicepright)","(boom)","(borat)","(bumble)","(bunny)","(cadbury)","(cake)","(candycorn)","(carl)","(caruso)","(catchemall)","(ceilingcat)","(celeryman)","(cereal)","(cerealspit)","(challengeaccepted)","(chewie)","(chocobunny)","(chompy)","(chucknorris)","(clarence)","(content)","(cookie)","(cornelius)","(corpsethumb)","(daenerys)","(dance)","(dealwithit)","(derp)","(disappear)","(disapproval)","(doge)","(doh)","(donotwant)","(dosequis)","(drevil)","(drool)","(ducreux)","(dumb)","(evilburns)","(excellent)","(facepalm)","(feelsbadman)","(feelsgoodman)","(finn)","(fireworks)","(firstworldproblems)","(fonzie)","(foreveralone)","(freddie)","(fry)","(ftfy)","(fu)","(fuckyeah)","(fwp)","(gangnamstyle)","(gates)","(ghost)","(giggity)","(goldstar)","(goodnews)","(greenbeer)","(grumpycat)","(gtfo)","(haha)","(haveaseat)","(heart)","(heygirl)","(hodor)","(huh)","(ilied)","(indeed)","(iseewhatyoudidthere)","(itsatrap)","(jackie)","(jaime)","(jake)","(jobs)","(joffrey)","(jonsnow)","(kennypowers)","(krang)","(kwanzaa)","(lincoln)","(lol)","(lolwut)","(megusta)","(meh)","(menorah)","(mindblown)","(motherofgod)","(ned)","(nextgendev)","(nice)","(ninja)","(noidea)","(notbad)","(nothingtodohere)","(notit)","(notsureif)","(notsureifgusta)","(obama)","(ohcrap)","(ohgodwhy)","(ohmy)","(okay)","(omg)","(orly)","(paddlin)","(pbr)","(philosoraptor)","(pingpong)","(pirate)","(pokerface)","(poo)","(present)","(pumpkin)","(rageguy)","(rainicorn)","(rebeccablack)","(reddit)","(rockon)","(romney)","(rudolph)","(salute)","(samuel)","(santa)","(sap)","(scumbag)","(seomoz)","(shamrock)","(shrug)","(skyrim)","(standup)","(stare)","(success)","(sweetjesus)","(taco)","(taft)","(tea)","(thatthing)","(theyregreat)","(toodamnhigh)","(tree)","(troll)","(truestory)","(trump)","(turkey)","(twss)","(tyrion)","(tywin)","(unacceptable)","(washington)","(wat)","(whoa)","(whynotboth)","(wtf)","(yeah)","(yey)","(yodawg)","(youdontsay)","(yougotitdude)","(yuno)","(zoidberg)"].sample
  end

  def worried_prase
    ["ohhhh", "hmm hmm hmm", "shooosh", "damn!", "oh-ho", "baaaaahh"].sample
  end

  def yay_prase
    ["congrtz", "fiiinally", "w00t", "yuuupi", "yupi-ka-yo", "da-taaam", "oh my, oh my", "sweet"].sample
  end  
end