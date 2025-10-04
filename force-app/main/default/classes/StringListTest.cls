public class StringListTest {
  public static List<String> generateStringList(Integer count) {
    // Sama kayak const result = [];
    List<String> result = new List<String>();
    for (Integer i = 0; i < count; i++) {
      // sama kayak result.push()
      result.add('Test ' + i);
    }

    System.debug(result);
    return result;
  }
}
