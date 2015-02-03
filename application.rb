module HNConfig
  # app settings
  HIPCHAT_TOKEN         = ENV["HIPCHAT_TOKEN"]
  HIPCHAT_API           = ENV["HIPCHAT_API"]
  HIPCHAT_ROOM_ID       = ENV["HIPCHAT_ROOM_ID"]
  HIPCHAT_ROOM_NAME     = ENV["HIPCHAT_ROOM_NAME"]
  HIPCHAT_MSG_FROM      = ENV["HIPCHAT_MSG_FROM"]

  # constants
  HIPCHAT_API_ROOMS_MSG = "rooms/message"
  HIPCHAT_API_DEFAULTS  = "format=json"
end

def client
  HipChat::Client.new(HNConfig::HIPCHAT_TOKEN, :api_version => 'v2')[HNConfig::HIPCHAT_ROOM_NAME]
end

def update_msg_params
  {
    :message_format => 'text',
    :color => 'gray'
  }
end

def create_msg_params
  {
    :message_format => 'text',
    :color => 'red'
  }
end

def closed_msg_params
  {
    :message_format => 'text',
    :color => 'green'
  }
end

def sender
  HNConfig::HIPCHAT_MSG_FROM
end

def fun_hi
  ["hey", "Heeeeey", "hi", "hihihi", "Hello", "sup", "Hey", "herro", "hiiiii", "hola", "Howdy", "Ello", "hiya", "ANYTHING", "haiiii", "Haaaaayye", "Hii", "heyooo", "hi", "yo", "yo", "hey", "hihihi", "hey sexy ;)", "aloha", "bonjour", "hey", "I", "hey", "whuddup", "whaddup", "wasssuuuppp", "hullo", "heya", "HEYYYYYYY", "hayyyy", "hihasdgiii"].sample
end

def fun_everyone
  ["y'all", "guys'n'girls", "everyone", "friends", "devs", "space cowboys"].sample
end

def fun_emoji
  ["(allthethings)","(android)","(areyoukiddingme)","(arrington)","(arya)","(ashton)","(atlassian)","(awesome)","(awthanks)","(aww)","(awwyiss)","(awyeah)","(badass)","(badjokeeel)","(badpokerface)","(badtime)","(basket)","(beer)","(bicepleft)","(bicepright)","(bitbucket)","(boom)","(borat)","(branch)","(bumble)","(bunny)","(cadbury)","(cake)","(candycorn)","(carl)","(caruso)","(catchemall)","(ceilingcat)","(celeryman)","(cereal)","(cerealspit)","(challengeaccepted)","(chef)","(chewie)","(chocobunny)","(chompy)","(chucknorris)","(clarence)","(coffee)","(confluence)","(content)","(continue)","(cookie)","(cornelius)","(corpsethumb)","(daenerys)","(dance)","(dealwithit)","(derp)","(disappear)","(disapproval)","(doge)","(doh)","(donotwant)","(dosequis)","(downvote)","(drevil)","(drool)","(ducreux)","(dumb)","(evilburns)","(excellent)","(facepalm)","(failed)","(feelsbadman)","(feelsgoodman)","(finn)","(fireworks)","(firstworldproblems)","(fonzie)","(foreveralone)","(freddie)","(fry)","(ftfy)","(fu)","(fuckyeah)","(fwp)","(gangnamstyle)","(gates)","(ghost)","(giggity)","(goldstar)","(goodnews)","(greenbeer)","(grumpycat)","(gtfo)","(haha)","(haveaseat)","(heart)","(heygirl)","(hipchat)","(hipster)","(hodor)","(huehue)","(hugefan)","(huh)","(ilied)","(indeed)","(iseewhatyoudidthere)","(itsatrap)","(jackie)","(jaime)","(jake)","(jira)","(jobs)","(joffrey)","(jonsnow)","(kennypowers)","(krang)","(kwanzaa)","(lincoln)","(lol)","(lolwut)","(megusta)","(meh)","(menorah)","(mindblown)","(motherofgod)","(ned)","(nextgendev)","(nice)","(ninja)","(noidea)","(notbad)","(nothingtodohere)","(notit)","(notsureif)","(notsureifgusta)","(obama)","(ohcrap)","(ohgodwhy)","(ohmy)","(okay)","(omg)","(orly)","(paddlin)","(pbr)","(philosoraptor)","(pingpong)","(pirate)","(pokerface)","(poo)","(present)","(pumpkin)","(rageguy)","(rainicorn)","(rebeccablack)","(reddit)","(rockon)","(romney)","(rudolph)","(salute)","(samuel)","(santa)","(sap)","(scumbag)","(seomoz)","(shamrock)","(shrug)","(skyrim)","(standup)","(stare)","(success)","(sweetjesus)","(taco)","(taft)","(tea)","(thatthing)","(theyregreat)","(toodamnhigh)","(tree)","(troll)","(truestory)","(trump)","(turkey)","(twss)","(tyrion)","(tywin)","(unacceptable)","(washington)","(wat)","(whoa)","(whynotboth)","(wtf)","(yeah)","(yey)","(yodawg)","(youdontsay)","(yougotitdude)","(yuno)","(zoidberg)"].sample
end

def worried_prase
  ["ohhhh", "hmm hmm hmm", "shooosh", "damn!", "oh-ho", "baaaaahh"].sample
end
