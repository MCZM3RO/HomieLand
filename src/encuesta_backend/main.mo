import RBTree "mo:base/RBTree";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";


actor {

  var question: Text = "☄️☄️Qué videojuegos web3 de esta lista conoces? ☄️☄️";
  var votes: RBTree.RBTree<Text, Nat> = RBTree.RBTree(Text.compare);


  public query func getQuestion() : async Text { 
    question 
  };


    public query func getVotes() : async [(Text, Nat)] {
    
        Iter.toArray(votes.entries())
    
    };

    
  public func vote(entry: Text) : async [(Text, Nat)] {

    let votes_for_entry :?Nat = votes.get(entry);
    
    let current_votes_for_entry : Nat = switch votes_for_entry {
      case null 0;
      case (?Nat) Nat;
    };

  
    votes.put(entry, current_votes_for_entry + 1);

   
    Iter.toArray(votes.entries())
  };

  public func resetVotes() : async [(Text, Nat)] {
      votes.put("GuildOfGuardians", 0);
      votes.put("RumbleRacingStar", 0);
      votes.put("OuterRing", 0);
      votes.put("SearchForAnimera", 0);
      votes.put("ChampionsAscension", 0);
      votes.put("Resurgence", 0);
      votes.put("StarAtlas", 0);
      votes.put("Shrapnel", 0);
      Iter.toArray(votes.entries())
  };

};

