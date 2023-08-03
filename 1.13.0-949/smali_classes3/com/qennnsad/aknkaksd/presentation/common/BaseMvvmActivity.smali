.class public abstract Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseMvvmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMvvmActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMvvmActivity.kt\ncom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n75#2,13:150\n1#3:163\n*S KotlinDebug\n*F\n+ 1 BaseMvvmActivity.kt\ncom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity\n*L\n28#1:150,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008K\u0010LJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0017\u0010\n\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u000e\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014J\u0008\u0010\u000f\u001a\u00020\u0006H\u0004J\u0016\u0010\u0013\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0014J\u0016\u0010\u0014\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0014J\u0008\u0010\u0015\u001a\u00020\u0006H\u0014J$\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00162\u0014\u0010\u0019\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u00060\u0017J\u0008\u0010\u001b\u001a\u00020\u0006H\u0016J\u0008\u0010\u001c\u001a\u00020\u0006H\u0014J\u0008\u0010\u001d\u001a\u00020\u0006H\u0014J\u0008\u0010\u001e\u001a\u00020\u0006H\u0014J\u0008\u0010\u001f\u001a\u00020\u0006H\u0014R\"\u0010&\u001a\u00028\u00008\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001b\u00104\u001a\u00020/8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0017\u0010:\u001a\u0002058\u0006\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R4\u0010F\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0011 A*\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010@0@0?8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010ER(\u0010J\u001a\u0010\u0012\u000c\u0012\n A*\u0004\u0018\u00010G0G0?8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008H\u0010C\u001a\u0004\u0008I\u0010E\u00a8\u0006M"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;",
        "Landroidx/viewbinding/ViewBinding;",
        "VB",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l$a;",
        "msg",
        "",
        "c0",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
        "I",
        "(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "S",
        "",
        "",
        "permissions",
        "X",
        "V",
        "W",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;",
        "Lkotlin/Function1;",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
        "onPrivateLimitLoaded",
        "d0",
        "e0",
        "Y",
        "onResume",
        "onPause",
        "onDestroy",
        "a",
        "Landroidx/viewbinding/ViewBinding;",
        "J",
        "()Landroidx/viewbinding/ViewBinding;",
        "a0",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "binding",
        "Landroidx/navigation/NavController;",
        "b",
        "Landroidx/navigation/NavController;",
        "M",
        "()Landroidx/navigation/NavController;",
        "b0",
        "(Landroidx/navigation/NavController;)V",
        "navController",
        "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;",
        "c",
        "Lkotlin/Lazy;",
        "P",
        "()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;",
        "sharedViewModel",
        "Lcom/im/freechat/sdk/a$a;",
        "d",
        "Lcom/im/freechat/sdk/a$a;",
        "R",
        "()Lcom/im/freechat/sdk/a$a;",
        "suspendRunner",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;",
        "e",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;",
        "popupDialog",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "f",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "O",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "requestPermissions",
        "Landroid/content/Intent;",
        "g",
        "N",
        "openSettings",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field protected a:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field

.field public b:Landroidx/navigation/NavController;

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/sdk/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 3
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 5
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 6
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 7
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->c:Lkotlin/Lazy;

    .line 8
    new-instance v0, Lcom/im/freechat/sdk/a$a;

    invoke-direct {v0}, Lcom/im/freechat/sdk/a$a;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->d:Lcom/im/freechat/sdk/a$a;

    .line 9
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$d;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$e;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V

    invoke-static {p0, v0, v1, v2}, Lp5/h;->c(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->f:Landroidx/activity/result/ActivityResultLauncher;

    .line 10
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/common/a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/common/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026eturnFromSettings()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->g:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic G(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->Z(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic H(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->U(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/util/t;)V

    return-void
.end method

.method private static final U(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->c0(Lcom/qennnsad/aknkaksd/presentation/common/l$a;)V

    :cond_0
    return-void
.end method

.method private static final Z(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->Y()V

    return-void
.end method

.method private final c0(Lcom/qennnsad/aknkaksd/presentation/common/l$a;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;->a()[Ljava/lang/Object;

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->f(Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;->a()[Ljava/lang/Object;

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->f(Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract I(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            ")TVB;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method protected final J()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->a:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final M()Landroidx/navigation/NavController;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->b:Landroidx/navigation/NavController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "navController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final N()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->g:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method protected O()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->f:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public final P()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    return-object v0
.end method

.method public final R()Lcom/im/freechat/sdk/a$a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->d:Lcom/im/freechat/sdk/a$a;

    return-object v0
.end method

.method protected final S()V
    .locals 2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->O()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {}, Lp5/e;->i()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected V(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->g:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0, p1, v0}, Lp5/e;->s(Landroid/app/Activity;Ljava/util/List;Landroidx/activity/result/ActivityResultLauncher;)V

    :cond_0
    return-void
.end method

.method protected W()V
    .locals 0

    return-void
.end method

.method protected X(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Ljava/util/List;)V

    invoke-static {p0, p1, v0}, Lp5/e;->p(Landroid/app/Activity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected Y()V
    .locals 0

    return-void
.end method

.method protected final a0(Landroidx/viewbinding/ViewBinding;)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->a:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public final b0(Landroidx/navigation/NavController;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavController;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->b:Landroidx/navigation/NavController;

    return-void
.end method

.method public final d0(Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPrivateLimitLoaded"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "xxx Popup Window already shown. Cancelling.."

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "xxx Preparing new Popup Window.."

    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xxx Popup Window is of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;->popup_type:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v4, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;->popup_type:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    sget-object v5, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v1, :cond_4

    const/4 v1, 0x2

    if-eq v4, v1, :cond_3

    const/4 v1, 0x3

    if-ne v4, v1, :cond_2

    .line 7
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 8
    :cond_3
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->b()Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    .line 9
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;-><init>()V

    goto :goto_1

    .line 10
    :cond_4
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V

    .line 11
    :goto_1
    iget-object p2, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;->title:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->k(Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;->content:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->i(Ljava/lang/String;)V

    const p1, 0x7f130301

    .line 13
    invoke-virtual {v3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->f(I)V

    const p1, 0x7f1300d1

    .line 14
    invoke-virtual {v3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->d(I)V

    .line 15
    invoke-virtual {v3, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->j(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;)V

    .line 16
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "xxx Popup Window displayed!"

    .line 18
    invoke-virtual {v0, p2, p1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e0()V
    .locals 4

    const v0, 0x7f130416

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->y(IZILjava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->I(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->a0(Landroidx/viewbinding/ViewBinding;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->P()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->P(Landroidx/lifecycle/LifecycleOwner;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->P()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->f()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "----- onDestroy -----"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "----- onPause -----"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "----- onResume -----"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
