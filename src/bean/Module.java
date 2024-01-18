package bean;

public class Module {
    private int moduleId;
    private String moduleName;
    private String moduleDescription;

    public Module(int moduleId, String moduleName, String moduleDescription) {
        super();
        this.moduleId = moduleId;
        this.moduleName = moduleName;
        this.moduleDescription = moduleDescription;
    }

    public Module() {
        super();
        // TODO Auto-generated constructor stub
    }

    public int getModuleId() {
        return moduleId;
    }

    public void setModuleId(int moduleId) {
        this.moduleId = moduleId;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public String getModuleDescription() {
        return moduleDescription;
    }

    public void setModuleDescription(String moduleDescription) {
        this.moduleDescription = moduleDescription;
    }

}
