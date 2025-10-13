//
//  Person.swift
//  Project 4 2.0
//
//  Created by Dallin J Cottam on 10/9/25.
//

import SwiftUI
import Foundation

struct Person: Identifiable {
    var id: String
    var name: String
    var other: String
    var lookedAt = false
    var pic: Image
}

extension Person {
    static let peopleList = [Person(id: "Dallin C.", name: "Dallin", other: "I  like  a  lot  of  things,  I  really  like  Deltarune,  I  couldn't  find  pictures  of  Ethan,  logan  and  Adrew  so  i  just  found  a  picture  of  a  cat", pic: Image("DallinProject4")), Person(id: "Ingram F.", name: "Ingram", other: "I  have  been  to   Disney  Land,  World  and  Universal  in  Orlando   with   him  on  ballroom  tour,  I  havn't  even  gone  with  my  own  family", pic: Image("Project 4 pic 1")), Person(id: "Clay T.", name: "Clay", other: "Will  jump  off  a  bridge  if  you  tell  him  to,  he  just  does   whatever", pic: Image("Project 4 image 2")), Person(id: "Andrew B.", name: "Andrew", other: "Spends  all  his  money  on   MTG  then  complains  that  he  has  no  money  to  spend  on  MTG", pic: Image("DefaultProject4")), Person(id: "JD", name: "JD", other: "He  lives  like  almost  an  hour  away  so  can  never  hang  out  and  will  find  out  he  can't  hang  out  2  hours  before", pic: Image("project 4 image 3")), Person(id: "Ethan", name: "Ethan", other: "He  will  only  do  like  3  things  with  us  and  will  not  play  popular  games", pic: Image("DefaultProject4")), Person(id: "Logan P.", name: "Logan", other: "Only  plays  R.E.P.O  and  made  us  play  Among  Us  for  like  a  year  and  a  half  during  luch  at  school", pic: Image("DefaultProject4"))]
}
