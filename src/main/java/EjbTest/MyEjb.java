package EjbTest;

import javax.ejb.Stateless;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

@Stateless
public class MyEjb implements IMyEJB {




    public List<String> readFileDirectory() throws IOException {
        Path path = Paths.get("C:\\Users\\User\\IdeaProjects");
        List<String> collect = Files.walk(path, Integer.MAX_VALUE)
                .map(String::valueOf)
                .sorted()
                .collect(Collectors.toList());
        return collect;
    }


}
