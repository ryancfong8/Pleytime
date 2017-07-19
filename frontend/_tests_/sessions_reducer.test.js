import SessionsReducer from '../reducers/sessions_reducer.js';
import RootReducer from '../reducers/root_reducer';
import { createStore } from 'redux';

describe('SessionsReducer', () => {
  it('exports a function', () => {
    expect(typeof SessionsReducer).toEqual('function');
  });

  it('should initialize with an empty object as the default state', () => {
    expect(SessionsReducer(undefined, {})).toEqual({ currentUser: null, errors: []});
  });

  it('should return the previous state if an action is not matched', () => {
    const oldState = { 1: 'oldState' };
    const newState = SessionsReducer(oldState, { type: 'unmatchedtype' });
    expect(newState).toEqual(oldState);
  });

  describe('handling the RECEIVE_CURRENT_USER action', () => {
    let action,
      testUser,
      testSession = { currentUser: { username: "Ryan F" }, errors: [] };

    beforeEach(() => {
      testUser = { username: "Ryan F" };
      action = {
        type: 'RECEIVE_CURRENT_USER',
        currentUser: testUser
      };
    });

    it('should replace the state with the action\'s currentUser', () => {
      const state = SessionsReducer(undefined, action);
      expect(state).toEqual(testSession);
    });

    it('should not modify the old state', () => {
      let oldState = { currentUser: null, errors: []};
      SessionsReducer(oldState, action);
      expect(oldState).toEqual({ currentUser: null, errors: [] });
    });
  });

  describe('handling the RECEIVE_ERRORS action', () => {
    let action,
      testSession = { currentUser: null, errors: ["Username can't be blank"] };

    beforeEach(() => {
      action = {
        type: 'RECEIVE_ERRORS',
        errors: ["Username can't be blank"]
      };
    });

    it('should replace the state with the action\'s error', () => {
      const state = SessionsReducer(undefined, action);
      expect(state).toEqual(testSession);
    });

    it('should not modify the old state', () => {
      let oldState = { currentUser: null, errors: [] };
      SessionsReducer(oldState, action);
      expect(oldState).toEqual({ currentUser: null, errors: [] });
    });
  });

  describe('handling the CLEAR_ERRORS action', () => {
    let action,
      beforeSession,
      testSession = { currentUser: null, errors: [] };

    beforeEach(() => {
      beforeSession = { currentUser: null, errors: ["Username can't be blank"] };
      action = {
        type: 'CLEAR_ERRORS',
      };
    });

    it('should clear the state of the action\'s error', () => {
      const state = SessionsReducer(beforeSession, action);
      expect(state).toEqual(testSession);
    });

    it('should not modify the old state', () => {
      let oldState = { currentUser: null, errors: ["Username can't be blank"] };
      SessionsReducer(oldState, action);
      expect(oldState).toEqual({ currentUser: null, errors: ["Username can't be blank"] });
    });
  });

  describe('RootReducer', () => {
    let testStore,
        testUser;


    beforeAll(() => {
      testUser = {username: "Ryan F"};
      testStore = createStore(RootReducer);
    });

    it('exports a function', () => {
      expect(typeof RootReducer).toEqual('function');
    });

    it('includes the SessionsReducer under the key `session`', () => {
      const action = { type: 'RECEIVE_CURRENT_USER', currentUser: testUser };
      testStore.dispatch(action);

      expect(testStore.getState().session).toEqual(SessionsReducer(undefined, action));
    });
  });
});
