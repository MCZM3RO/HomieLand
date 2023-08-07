import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'getQuestion' : ActorMethod<[], string>,
  'getVotes' : ActorMethod<[], Array<[string, bigint]>>,
  'resetVotes' : ActorMethod<[], Array<[string, bigint]>>,
  'vote' : ActorMethod<[string], Array<[string, bigint]>>,
}
