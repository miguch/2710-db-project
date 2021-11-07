const STORAGE_PREFIX = '__db__'

export default {
  getItem(key) {
    key = STORAGE_PREFIX + key
    const obj = JSON.parse(localStorage.getItem(key));
    // if expired, remove item
    if (obj && obj.expiration) {
      if (Date.now() >= obj.expiration) {
        localStorage.removeItem(key);
        return null;
      } else {
        return obj.value;
      }
    } else {
      return obj;
    }
  },
  // expire after ${expiration} seconds
  setItem(key, val, expiration = 0) {
    key = STORAGE_PREFIX + key
    if (!expiration) {
      localStorage.setItem(key, JSON.stringify(val));
    } else {
      const expireTimestamp = Date.now() + expiration * 1000;
      localStorage.setItem(
        key,
        JSON.stringify({
          value: val,
          expiration: expireTimestamp
        })
      );
    }
  },
  delItem(key) {
    key = STORAGE_PREFIX + key
    localStorage.removeItem(key);
  }
};
