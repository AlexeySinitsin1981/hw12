package EjbTest;

import javax.ejb.Local;
import java.io.IOException;
import java.util.List;

@Local
public interface IMyEJB {

        List<String> readFileDirectory() throws IOException;

}
