.class public Lappinventor/ai_imagine_gd/shikshabank/Screen1;
.super Lcom/google/appinventor/components/runtime/Form;
.source "Screen1.yail"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreen1.yail\nScheme\n*S Scheme\n*F\n+ 1 Screen1.yail\n/tmp/1711173653638_0.6294837320226028-0/youngandroidproject/../src/appinventor/ai_imagine_gd/shikshabank/Screen1.yail\n+ 2 runtime1462831921990722459.scm\n/tmp/runtime1462831921990722459.scm\n*L\n5#1,21:5\n318#2,338:10000\n*E\n"
.end annotation


# static fields
.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/lists/FString;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/lists/FString;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static Screen1:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn4:Lgnu/expr/ModuleMethod;


# instance fields
.field public $Stdebug$Mnform$St:Ljava/lang/Boolean;

.field public final $define:Lgnu/expr/ModuleMethod;

.field public WebViewer1:Lcom/google/appinventor/components/runtime/WebViewer;

.field public final add$Mnto$Mncomponents:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnevents:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnform$Mndo$Mnafter$Mncreation:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnglobal$Mnvar$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnglobal$Mnvars:Lgnu/expr/ModuleMethod;

.field public final android$Mnlog$Mnform:Lgnu/expr/ModuleMethod;

.field public components$Mnto$Mncreate:Lgnu/lists/LList;

.field public final dispatchEvent:Lgnu/expr/ModuleMethod;

.field public final dispatchGenericEvent:Lgnu/expr/ModuleMethod;

.field public events$Mnto$Mnregister:Lgnu/lists/LList;

.field public form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

.field public form$Mnenvironment:Lgnu/mapping/Environment;

.field public form$Mnname$Mnsymbol:Lgnu/mapping/Symbol;

.field public final get$Mnsimple$Mnname:Lgnu/expr/ModuleMethod;

.field public global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

.field public global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

.field public final is$Mnbound$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final lookup$Mnhandler:Lgnu/expr/ModuleMethod;

.field public final lookup$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final onCreate:Lgnu/expr/ModuleMethod;

.field public final process$Mnexception:Lgnu/expr/ModuleMethod;

.field public final send$Mnerror:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lookup-handler"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "dispatchGenericEvent"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "dispatchEvent"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "send-error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-form-do-after-creation"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-global-vars"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-components"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-events"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-global-var-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "is-bound-in-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lookup-in-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "android-log-form"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get-simple-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.WebViewer"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit14:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "HomeUrl"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "WebViewer1"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit11:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Title"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Sizing"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "ShowListsAsJson"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "ScreenOrientation"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "text"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "AppName"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "boolean"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "ActionBar"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*the-null-value*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "getMessage"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Screen1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    new-instance v0, Lgnu/expr/ModuleMethod;

    new-instance v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;

    invoke-direct {v1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;-><init>()V

    iput-object p0, v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->get$Mnsimple$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    const-string v3, "onCreate"

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->onCreate:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->android$Mnlog$Mnform:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x4

    const/16 v5, 0x2002

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->add$Mnto$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x5

    const/16 v6, 0x2001

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookup$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->is$Mnbound$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->add$Mnto$Mnglobal$Mnvar$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->add$Mnto$Mnevents:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xa

    const/16 v6, 0x4004

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->add$Mnto$Mncomponents:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->add$Mnto$Mnglobal$Mnvars:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->add$Mnto$Mnform$Mndo$Mnafter$Mncreation:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->send$Mnerror:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    const-string v3, "process-exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->process$Mnexception:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->dispatchEvent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->dispatchGenericEvent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit28:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookup$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v5, "/tmp/runtime1462831921990722459.scm:634"

    invoke-virtual {v0, v2, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    const-string v5, "$define"

    invoke-direct {v0, v1, v2, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->$define:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public static lambda1symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;
    .registers 10
    .param p0, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10283
    .local v0, "symbols":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 10284
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 10285
    sget-object v2, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    .line 10286
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v3, "result":Ljava/lang/Object;
    move-object v4, v0

    .local v4, "arg0":Ljava/lang/Object;
    const/4 v5, 0x0

    :goto_e
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v7, 0x1

    if-ne v4, v6, :cond_2b

    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "arg0":Ljava/lang/Object;
    invoke-static {v3}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1b
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {v1}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    return-object v1

    .line 10285
    .end local v0    # "symbols":Lgnu/lists/LList;
    .end local p0    # "argsArray":[Ljava/lang/Object;
    :catch_22
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string->symbol"

    invoke-direct {v0, p0, v2, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10286
    .restart local v0    # "symbols":Lgnu/lists/LList;
    .restart local v3    # "result":Ljava/lang/Object;
    .restart local v4    # "arg0":Ljava/lang/Object;
    .restart local p0    # "argsArray":[Ljava/lang/Object;
    :cond_2b
    :try_start_2b
    move-object v6, v4

    check-cast v6, Lgnu/lists/Pair;
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2e} :catch_4c

    .local v5, "arg0":Lgnu/lists/Pair;
    move-object v5, v6

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    :try_start_37
    check-cast v8, Lgnu/mapping/Symbol;
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_37 .. :try_end_39} :catch_43

    invoke-static {v8}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    move-object v4, v6

    goto :goto_e

    .end local v0    # "symbols":Lgnu/lists/LList;
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "arg0":Lgnu/lists/Pair;
    .end local p0    # "argsArray":[Ljava/lang/Object;
    :catch_43
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "symbol->string"

    invoke-direct {v0, p0, v1, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_4c
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "arg0"

    invoke-direct {v0, p0, v2, v1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method static lambda2()Ljava/lang/Object;
    .registers 1

    .line 10316
    const/4 v0, 0x0

    return-object v0
.end method

.method static lambda3()Ljava/lang/Object;
    .registers 5

    .line 10
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v4, "shikshabank"

    invoke-static {v0, v1, v4, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v4, "unspecified"

    invoke-static {v0, v1, v4, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v4, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v3, "Responsive"

    invoke-static {v0, v1, v3, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v3, "Screen1"

    invoke-static {v0, v1, v3, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda4()Ljava/lang/Object;
    .registers 4

    .line 21
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v3, "www.shikshabank.org"

    invoke-static {v0, v1, v3, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda5()Ljava/lang/Object;
    .registers 4

    .line 21
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v3, "www.shikshabank.org"

    invoke-static {v0, v1, v3, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $define()V
    .registers 17

    .line 10224
    move-object/from16 v1, p0

    .line 10227
    nop

    .line 10239
    nop

    .line 10248
    nop

    .line 10266
    nop

    .line 10283
    nop

    .line 10291
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 10300
    const/4 v2, 0x0

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->run()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_14

    move-object v0, v2

    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_22

    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_14
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    .restart local v0    # "exception":Ljava/lang/Exception;
    move-object v0, v3

    .line 10302
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10303
    invoke-virtual {v1, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_22
    sput-object v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Screen1:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 10308
    iget-object v0, v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    .line 10227
    move-object v3, v0

    .line 10228
    .local v3, "events":Ljava/lang/Object;
    nop

    .line 10236
    move-object v4, v0

    move-object v0, v2

    .local v4, "arg0":Ljava/lang/Object;
    :goto_2f
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v6, -0x2

    const-string v7, "arg0"

    if-ne v4, v5, :cond_19b

    .line 10311
    .end local v3    # "events":Ljava/lang/Object;
    .end local v4    # "arg0":Ljava/lang/Object;
    :try_start_36
    iget-object v4, v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v4}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v4

    .local v3, "components":Lgnu/lists/LList;
    move-object v3, v4

    .line 10316
    sget-object v4, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v4, v5}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10320
    iget-object v4, v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    invoke-static {v4}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v4

    .restart local v4    # "arg0":Ljava/lang/Object;
    :goto_4a
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_179

    .line 10321
    .end local v4    # "arg0":Ljava/lang/Object;
    nop

    .line 10248
    move-object v4, v3

    .local v0, "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    .local v4, "component$Mndescriptors":Ljava/lang/Object;
    move-object/from16 v5, p0

    .line 10263
    .end local v0    # "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    .local v5, "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    move-object v0, v4

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v2, v0

    move-object v0, v11

    .local v2, "arg0":Ljava/lang/Object;
    :goto_59
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v13, 0x0

    if-ne v2, v12, :cond_115

    .line 10327
    .end local v2    # "arg0":Ljava/lang/Object;
    .end local v4    # "component$Mndescriptors":Ljava/lang/Object;
    .end local v5    # "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    iget-object v2, v1, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v2}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v2

    .line 10239
    nop

    .local v2, "var$Mnval$Mnpairs":Ljava/lang/Object;
    move-object v4, v5

    .local v4, "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    move-object/from16 v4, p0

    .line 10245
    move-object v5, v2

    .local v5, "arg0":Ljava/lang/Object;
    :goto_69
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v9, :cond_d8

    .line 10334
    .end local v2    # "var$Mnval$Mnpairs":Ljava/lang/Object;
    .end local v4    # "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    .end local v5    # "arg0":Ljava/lang/Object;
    nop

    .line 10266
    move-object v2, v3

    .line 10268
    .local v2, "component$Mndescriptors":Ljava/lang/Object;
    nop

    .line 10273
    move-object v0, v2

    move-object v4, v0

    .local v4, "arg0":Ljava/lang/Object;
    :goto_72
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v0, :cond_ac

    .line 10280
    .end local v4    # "arg0":Ljava/lang/Object;
    move-object v0, v2

    move-object v4, v0

    .restart local v4    # "arg0":Ljava/lang/Object;
    :goto_78
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_7a
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_36 .. :try_end_7a} :catch_195

    if-ne v4, v0, :cond_7f

    move-object v0, v3

    .line 10279
    .end local v2    # "component$Mndescriptors":Ljava/lang/Object;
    .end local v3    # "components":Lgnu/lists/LList;
    .end local v4    # "arg0":Ljava/lang/Object;
    .local v0, "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    goto/16 :goto_19a

    .line 10280
    .end local v0    # "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    .restart local v2    # "component$Mndescriptors":Ljava/lang/Object;
    .restart local v3    # "components":Lgnu/lists/LList;
    .restart local v4    # "arg0":Ljava/lang/Object;
    :cond_7f
    :try_start_7f
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;
    :try_end_82
    .catch Ljava/lang/ClassCastException; {:try_start_7f .. :try_end_82} :catch_a4
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_7f .. :try_end_82} :catch_195

    .line 10268
    .local v5, "arg0":Lgnu/lists/Pair;
    move-object v5, v0

    :try_start_83
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 10275
    nop

    .line 10276
    .local v0, "component$Mninfo":Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 10277
    sget-object v9, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v11

    .local v9, "component$Mnname":Ljava/lang/Object;
    move-object v11, v8

    .line 10279
    .end local v9    # "component$Mnname":Ljava/lang/Object;
    .local v11, "component$Mnname":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v8, v1, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->callInitialize(Ljava/lang/Object;)V

    .end local v0    # "component$Mninfo":Ljava/lang/Object;
    .end local v11    # "component$Mnname":Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto :goto_78

    .line 10268
    .end local v5    # "arg0":Lgnu/lists/Pair;
    :catch_a4
    move-exception v0

    move-object v5, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v5, v7, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_ab
    throw v0
    :try_end_ac
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_83 .. :try_end_ac} :catch_195

    .line 10273
    :cond_ac
    :try_start_ac
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;
    :try_end_af
    .catch Ljava/lang/ClassCastException; {:try_start_ac .. :try_end_af} :catch_d0
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_ac .. :try_end_af} :catch_195

    .line 10268
    .restart local v5    # "arg0":Lgnu/lists/Pair;
    move-object v5, v0

    :try_start_b0
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 10269
    .restart local v0    # "component$Mninfo":Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10270
    sget-object v8, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v11

    .local v9, "init$Mnthunk":Ljava/lang/Object;
    move-object v11, v8

    .line 10272
    .end local v9    # "init$Mnthunk":Ljava/lang/Object;
    .local v11, "init$Mnthunk":Ljava/lang/Object;
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v8, :cond_ca

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v8, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "component$Mninfo":Ljava/lang/Object;
    .end local v11    # "init$Mnthunk":Ljava/lang/Object;
    :cond_ca
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto :goto_72

    .line 10268
    .end local v5    # "arg0":Lgnu/lists/Pair;
    :catch_d0
    move-exception v0

    move-object v5, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v5, v7, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_d7
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_b0 .. :try_end_d7} :catch_195

    goto :goto_ab

    .line 10245
    .local v2, "var$Mnval$Mnpairs":Ljava/lang/Object;
    .local v4, "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    .local v5, "arg0":Ljava/lang/Object;
    :cond_d8
    :try_start_d8
    move-object v9, v5

    check-cast v9, Lgnu/lists/Pair;
    :try_end_db
    .catch Ljava/lang/ClassCastException; {:try_start_d8 .. :try_end_db} :catch_10d
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_d8 .. :try_end_db} :catch_195

    .line 10327
    .local v0, "arg0":Lgnu/lists/Pair;
    nop

    .end local v0    # "arg0":Lgnu/lists/Pair;
    .local v9, "arg0":Lgnu/lists/Pair;
    :try_start_dc
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 10241
    move-object v11, v0

    .line 10242
    .local v11, "var$Mnval":Ljava/lang/Object;
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10243
    sget-object v12, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v12, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_ed
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_dc .. :try_end_ed} :catch_195

    .local v8, "val$Mnthunk":Ljava/lang/Object;
    .local v10, "var":Ljava/lang/Object;
    move-object v8, v12

    move-object v10, v0

    .line 10244
    :try_start_ef
    move-object v0, v10

    check-cast v0, Lgnu/mapping/Symbol;
    :try_end_f2
    .catch Ljava/lang/ClassCastException; {:try_start_ef .. :try_end_f2} :catch_103
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_ef .. :try_end_f2} :catch_195

    :try_start_f2
    sget-object v12, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v12, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v0, v12}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .end local v8    # "val$Mnthunk":Ljava/lang/Object;
    .end local v10    # "var":Ljava/lang/Object;
    .end local v11    # "var$Mnval":Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    move-object v0, v9

    goto/16 :goto_69

    .restart local v8    # "val$Mnthunk":Ljava/lang/Object;
    .restart local v10    # "var":Ljava/lang/Object;
    .restart local v11    # "var$Mnval":Ljava/lang/Object;
    :catch_103
    move-exception v0

    move-object v6, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v7, "add-to-global-var-environment"

    invoke-direct {v0, v6, v7, v13, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10327
    .end local v8    # "val$Mnthunk":Ljava/lang/Object;
    .end local v9    # "arg0":Lgnu/lists/Pair;
    .end local v10    # "var":Ljava/lang/Object;
    .end local v11    # "var$Mnval":Ljava/lang/Object;
    :catch_10d
    move-exception v0

    move-object v8, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v8, v7, v6, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
    :try_end_115
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_f2 .. :try_end_115} :catch_195

    .line 10263
    .local v2, "arg0":Ljava/lang/Object;
    .local v4, "component$Mndescriptors":Ljava/lang/Object;
    .local v5, "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    :cond_115
    :try_start_115
    move-object v11, v2

    check-cast v11, Lgnu/lists/Pair;
    :try_end_118
    .catch Ljava/lang/ClassCastException; {:try_start_115 .. :try_end_118} :catch_170
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_115 .. :try_end_118} :catch_195

    .line 10321
    .restart local v0    # "arg0":Lgnu/lists/Pair;
    nop

    .end local v0    # "arg0":Lgnu/lists/Pair;
    .local v11, "arg0":Lgnu/lists/Pair;
    :try_start_119
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 10249
    move-object v12, v0

    .line 10250
    .local v12, "component$Mninfo":Ljava/lang/Object;
    sget-object v0, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10251
    sget-object v14, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    invoke-virtual {v14, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10252
    sget-object v14, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v14, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 10253
    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v15, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_135
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_119 .. :try_end_135} :catch_195

    :try_start_135
    move-object v6, v15

    check-cast v6, Lgnu/mapping/Symbol;
    :try_end_138
    .catch Ljava/lang/ClassCastException; {:try_start_135 .. :try_end_138} :catch_166
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_135 .. :try_end_138} :catch_195

    :try_start_138
    invoke-virtual {v1, v6}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v6

    .local v8, "component$Mntype":Ljava/lang/Object;
    .local v9, "component$Mncontainer":Ljava/lang/Object;
    .local v10, "component$Mnname":Ljava/lang/Object;
    move-object v9, v6

    move-object v8, v14

    move-object v10, v0

    .line 10257
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v15

    .local v6, "component$Mnobject":Ljava/lang/Object;
    move-object v6, v0

    .line 10259
    sget-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-virtual {v0, v1, v10, v6}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14c
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_138 .. :try_end_14c} :catch_195

    .line 10262
    :try_start_14c
    move-object v0, v10

    check-cast v0, Lgnu/mapping/Symbol;
    :try_end_14f
    .catch Ljava/lang/ClassCastException; {:try_start_14c .. :try_end_14f} :catch_15c
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_14c .. :try_end_14f} :catch_195

    :try_start_14f
    invoke-virtual {v1, v0, v6}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .end local v6    # "component$Mnobject":Ljava/lang/Object;
    .end local v8    # "component$Mntype":Ljava/lang/Object;
    .end local v9    # "component$Mncontainer":Ljava/lang/Object;
    .end local v10    # "component$Mnname":Ljava/lang/Object;
    .end local v12    # "component$Mninfo":Ljava/lang/Object;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    move-object v0, v11

    move-object v11, v12

    const/4 v6, -0x2

    goto/16 :goto_59

    .restart local v6    # "component$Mnobject":Ljava/lang/Object;
    .restart local v8    # "component$Mntype":Ljava/lang/Object;
    .restart local v9    # "component$Mncontainer":Ljava/lang/Object;
    .restart local v10    # "component$Mnname":Ljava/lang/Object;
    .restart local v12    # "component$Mninfo":Ljava/lang/Object;
    :catch_15c
    move-exception v0

    move-object v7, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v14, "add-to-form-environment"

    invoke-direct {v0, v7, v14, v13, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10253
    .end local v6    # "component$Mnobject":Ljava/lang/Object;
    .end local v8    # "component$Mntype":Ljava/lang/Object;
    .end local v9    # "component$Mncontainer":Ljava/lang/Object;
    .end local v10    # "component$Mnname":Ljava/lang/Object;
    :catch_166
    move-exception v0

    move-object v6, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v7, "lookup-in-form-environment"

    invoke-direct {v0, v6, v7, v13, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10321
    .end local v11    # "arg0":Lgnu/lists/Pair;
    .end local v12    # "component$Mninfo":Ljava/lang/Object;
    :catch_170
    move-exception v0

    move-object v6, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v8, -0x2

    invoke-direct {v0, v6, v7, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
    :try_end_179
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_14f .. :try_end_179} :catch_195

    .line 10320
    .end local v2    # "arg0":Ljava/lang/Object;
    .end local v5    # "closureEnv":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    .local v4, "arg0":Ljava/lang/Object;
    :cond_179
    :try_start_179
    move-object v5, v4

    check-cast v5, Lgnu/lists/Pair;
    :try_end_17c
    .catch Ljava/lang/ClassCastException; {:try_start_179 .. :try_end_17c} :catch_18c
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_179 .. :try_end_17c} :catch_195

    .line 10316
    .restart local v0    # "arg0":Lgnu/lists/Pair;
    move-object v0, v5

    :try_start_17d
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    const/4 v6, -0x2

    goto/16 :goto_4a

    .end local v0    # "arg0":Lgnu/lists/Pair;
    :catch_18c
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v5, -0x2

    invoke-direct {v0, v2, v7, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
    :try_end_195
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_17d .. :try_end_195} :catch_195

    .line 10279
    .end local v3    # "components":Lgnu/lists/LList;
    .end local v4    # "arg0":Ljava/lang/Object;
    :catch_195
    move-exception v0

    move-object v2, v3

    .line 10337
    .local v0, "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    invoke-virtual {v1, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    .end local v0    # "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    :goto_19a
    return-void

    .line 10236
    .local v3, "events":Ljava/lang/Object;
    .restart local v4    # "arg0":Ljava/lang/Object;
    :cond_19b
    :try_start_19b
    move-object v5, v4

    check-cast v5, Lgnu/lists/Pair;
    :try_end_19e
    .catch Ljava/lang/ClassCastException; {:try_start_19b .. :try_end_19e} :catch_1c9

    .local v0, "arg0":Lgnu/lists/Pair;
    move-object v0, v5

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 10230
    nop

    .line 10232
    .local v5, "event$Mninfo":Ljava/lang/Object;
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 10234
    invoke-virtual {v6, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1ae

    move-object v6, v2

    goto :goto_1b2

    :cond_1ae
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1b2
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10235
    invoke-virtual {v7, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1bc

    move-object v7, v2

    goto :goto_1c0

    :cond_1bc
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1c0
    invoke-static {v1, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "event$Mninfo":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2f

    .line 10228
    .end local v0    # "arg0":Lgnu/lists/Pair;
    .end local v3    # "events":Ljava/lang/Object;
    .end local v4    # "arg0":Ljava/lang/Object;
    .end local p0    # "this":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    :catch_1c9
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v3, -0x2

    invoke-direct {v0, v2, v7, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1d3

    :goto_1d2
    throw v0

    :goto_1d3
    goto :goto_1d2
.end method

.method public addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "container$Mnname"    # Ljava/lang/Object;
    .param p2, "component$Mntype"    # Ljava/lang/Object;
    .param p3, "component$Mnname"    # Ljava/lang/Object;
    .param p4, "init$Mnthunk"    # Ljava/lang/Object;

    .line 10065
    nop

    .line 10066
    invoke-static {p1, p2, p3, p4}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    return-void
.end method

.method public addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "component$Mnname"    # Ljava/lang/Object;
    .param p2, "event$Mnname"    # Ljava/lang/Object;

    .line 10058
    nop

    .line 10059
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    return-void
.end method

.method public addToFormDoAfterCreation(Ljava/lang/Object;)V
    .registers 3
    .param p1, "thunk"    # Ljava/lang/Object;

    .line 10084
    nop

    .line 10085
    iget-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    invoke-static {p1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    return-void
.end method

.method public addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "object"    # Ljava/lang/Object;

    .line 10019
    nop

    .line 10020
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding ~A to env ~A with value ~A"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10021
    iget-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "object"    # Ljava/lang/Object;

    .line 10037
    nop

    .line 10038
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding ~A to env ~A with value ~A"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10039
    iget-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "var"    # Ljava/lang/Object;
    .param p2, "val$Mnthunk"    # Ljava/lang/Object;

    .line 10074
    nop

    .line 10075
    invoke-static {p1, p2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    return-void
.end method

.method public androidLogForm(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 10010
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 12
    .param p1, "componentObject"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "registeredComponentName"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 10111
    nop

    .line 10120
    invoke-static {p2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 10121
    .local v0, "registeredObject":Lgnu/mapping/SimpleSymbol;
    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_62

    .line 10122
    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_60

    .line 10123
    invoke-virtual {p0, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v1

    .line 10130
    .local v2, "handler":Ljava/lang/Object;
    nop

    .line 10131
    nop

    .line 10132
    const/4 v4, 0x1

    :try_start_1c
    sget-object v5, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    invoke-static {p4, v3}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_1c .. :try_end_25} :catch_5c
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1c .. :try_end_25} :catch_38
    .catchall {:try_start_1c .. :try_end_25} :catchall_27

    const/4 v3, 0x1

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    goto :goto_5e

    .line 10154
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    :catchall_27
    move-exception v4

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v1, v4

    .line 10158
    nop

    .line 10159
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10161
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10162
    invoke-virtual {p0, v1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    goto :goto_5e

    .line 10132
    .end local v1    # "exception":Ljava/lang/Throwable;
    :catch_38
    move-exception v5

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    move-object v1, v5

    .line 10143
    nop

    .line 10144
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 10148
    move v5, v3

    if-ne p0, p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    .local v4, "x":Z
    :goto_43
    if-eqz v4, :cond_4e

    const-string v5, "PermissionNeeded"

    invoke-static {p3, v5}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_50

    :cond_4e
    if-eqz v4, :cond_54

    .line 10153
    .end local v4    # "x":Z
    :goto_50
    invoke-virtual {p0, v1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    goto :goto_5b

    .line 10154
    :cond_54
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, p3, v4}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    goto :goto_5e

    .line 10132
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_5c
    move-exception v4

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    move-object v1, v4

    .line 10162
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    :goto_5e
    nop

    .end local v2    # "handler":Ljava/lang/Object;
    goto :goto_66

    :cond_60
    nop

    goto :goto_66

    .line 10166
    :cond_62
    nop

    .line 10167
    invoke-static {p0, p2, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "registeredObject":Lgnu/mapping/SimpleSymbol;
    :goto_66
    return v3
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .registers 13
    .param p1, "componentObject"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "notAlreadyHandled"    # Z
    .param p4, "args"    # [Ljava/lang/Object;

    .line 10172
    nop

    .line 10184
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "any$"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "$"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    .line 10185
    .local v0, "handler$Mnsymbol":Lgnu/mapping/SimpleSymbol;
    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    .line 10186
    .local v4, "handler":Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_7e

    .line 10187
    nop

    .line 10188
    nop

    .line 10189
    :try_start_2d
    sget-object v5, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    if-eqz p3, :cond_34

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_36

    :cond_34
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_36
    invoke-static {p4, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v7

    invoke-static {v6, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {p1, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_2d .. :try_end_45} :catch_7c
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2d .. :try_end_45} :catch_57
    .catchall {:try_start_2d .. :try_end_45} :catchall_46

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    goto :goto_7e

    .line 10205
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    :catchall_46
    move-exception v2

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v1, v2

    .line 10209
    nop

    .line 10210
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->androidLogForm(Ljava/lang/Object;)V

    .line 10212
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10213
    invoke-virtual {p0, v1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    goto :goto_7e

    .line 10189
    .end local v1    # "exception":Ljava/lang/Throwable;
    :catch_57
    move-exception v5

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    move-object v1, v5

    .line 10194
    nop

    .line 10195
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 10199
    if-ne p0, p1, :cond_62

    move v3, v2

    const/4 v2, 0x1

    .local v2, "x":Z
    goto :goto_63

    .end local v2    # "x":Z
    :cond_62
    move v3, v2

    .restart local v2    # "x":Z
    :goto_63
    if-eqz v2, :cond_6e

    const-string v3, "PermissionNeeded"

    invoke-static {p2, v3}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    goto :goto_70

    :cond_6e
    if-eqz v2, :cond_74

    .line 10204
    .end local v2    # "x":Z
    :goto_70
    invoke-virtual {p0, v1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    goto :goto_7b

    .line 10205
    :cond_74
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    goto :goto_7e

    .line 10189
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_7c
    move-exception v2

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    move-object v1, v2

    .line 10213
    .end local v0    # "handler$Mnsymbol":Lgnu/mapping/SimpleSymbol;
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    .end local v4    # "handler":Ljava/lang/Object;
    :cond_7e
    :goto_7e
    return-void
.end method

.method public getSimpleName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 10000
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z
    .registers 3
    .param p1, "name"    # Lgnu/mapping/Symbol;

    .line 10029
    nop

    .line 10030
    iget-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method public lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "componentName"    # Ljava/lang/Object;
    .param p2, "eventName"    # Ljava/lang/Object;

    .line 10216
    nop

    .line 10217
    const/4 v0, 0x0

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    if-nez p2, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "default$Mnvalue"    # Ljava/lang/Object;

    .line 10023
    nop

    .line 10024
    iget-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v3, v2

    and-int/2addr v2, v3

    .local v1, "x":Z
    move v1, v2

    if-eqz v1, :cond_16

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_18

    :cond_16
    if-eqz v1, :cond_1f

    .line 10026
    .end local v1    # "x":Z
    :goto_18
    iget-object v0, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 10024
    :cond_1f
    move-object v0, p2

    :goto_20
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 10003
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setClassicModeFromYail(Z)V

    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public processException(Ljava/lang/Object;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Object;

    .line 10092
    nop

    .line 10093
    nop

    .line 10103
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10105
    sget-object v1, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    if-eqz v1, :cond_24

    .line 10106
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getErrorType()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_24
    const-string v1, "Runtime Error"

    :goto_26
    const-string v2, "End Application"

    invoke-static {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;->alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 4

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    sget-object v2, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    :try_start_a
    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->run(Lgnu/mapping/CallContext;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    const/4 v2, 0x0

    goto :goto_10

    :catchall_f
    move-exception v2

    :goto_10
    invoke-static {v0, v2, v1}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 10
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const-string v0, "java.lang.Runnable.run()"

    const/4 v1, 0x0

    .line 5
    .local v1, "$result":Lgnu/lists/Consumer;
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const-string v2, "com.google.youngandroid.runtime"

    invoke-static {v2}, Lkawa/standard/require;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_c
    check-cast v3, Ljava/lang/Runnable;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_d7

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 10000
    nop

    .line 10008
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->$Stdebug$Mnform$St:Ljava/lang/Boolean;

    .line 10010
    sget-object v3, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v5

    iput-object v5, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnenvironment:Lgnu/mapping/Environment;

    .line 10019
    nop

    .line 10023
    nop

    .line 10029
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "-global-vars"

    aput-object v6, v5, v4

    invoke-static {v5}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_3b

    move-object v5, v6

    goto :goto_3f

    :cond_3b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3f
    invoke-static {v5}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v5

    iput-object v5, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    .line 10037
    sput-object v6, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Screen1:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    iput-object v3, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mnname$Mnsymbol:Lgnu/mapping/Symbol;

    .line 10049
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->events$Mnto$Mnregister:Lgnu/lists/LList;

    .line 10054
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->components$Mnto$Mncreate:Lgnu/lists/LList;

    .line 10058
    nop

    .line 10065
    nop

    .line 10071
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    .line 10074
    nop

    .line 10082
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    .line 10084
    nop

    .line 10089
    nop

    .line 10111
    nop

    .line 10172
    nop

    .line 10216
    nop

    .line 6
    invoke-static {v2}, Lkawa/standard/require;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_65
    check-cast v2, Ljava/lang/Runnable;
    :try_end_67
    .catch Ljava/lang/ClassCastException; {:try_start_65 .. :try_end_67} :catch_d0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_a3

    .line 10
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3, v0, v2, v4}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v5, "shikshabank"

    invoke-static {v3, v0, v5, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v5, "unspecified"

    invoke-static {v3, v0, v5, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v0, v5, v4}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v4, "Responsive"

    invoke-static {v3, v0, v4, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v4, "Screen1"

    invoke-static {v3, v0, v4, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_ad

    :cond_a3
    new-instance v0, Lkawa/lang/Promise;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-direct {v0, v2}, Lkawa/lang/Promise;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {p0, v0}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    .line 20
    :goto_ad
    iput-object v6, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->WebViewer1:Lcom/google/appinventor/components/runtime/WebViewer;

    sget-object v0, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_c3

    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit11:Lgnu/lists/FString;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v0, v2, v4}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_cc

    :cond_c3
    sget-object v0, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit14:Lgnu/lists/FString;

    sget-object v2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v3, v0, v2, v4}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_cc
    invoke-static {}, Lcom/google/youngandroid/runtime;->initRuntime()V

    return-void

    .line 6
    .end local v1    # "$result":Lgnu/lists/Consumer;
    .end local p0    # "this":Lappinventor/ai_imagine_gd/shikshabank/Screen1;
    .end local p1    # "$ctx":Lgnu/mapping/CallContext;
    :catch_d0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 25
    :catch_d7
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public sendError(Ljava/lang/Object;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Object;

    .line 10089
    nop

    .line 10090
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    return-void
.end method
