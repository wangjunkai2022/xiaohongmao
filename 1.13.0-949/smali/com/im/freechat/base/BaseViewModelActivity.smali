.class public abstract Lcom/im/freechat/base/BaseViewModelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseViewModelActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseViewModelActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseViewModelActivity.kt\ncom/im/freechat/base/BaseViewModelActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u0001*\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010\u0008\u001a\u00028\u00012\u0006\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\rH$J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013R\"\u0010\u001c\u001a\u00028\u00018\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001d8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/im/freechat/base/BaseViewModelActivity;",
        "",
        "T",
        "Landroidx/viewbinding/ViewBinding;",
        "VB",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "R",
        "(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "",
        "M",
        "(Ljava/lang/Enum;Landroid/os/Bundle;)V",
        "init",
        "savedInstanceState",
        "onCreate",
        "Lcom/im/freechat/base/a$b;",
        "msg",
        "U",
        "a",
        "Landroidx/viewbinding/ViewBinding;",
        "I",
        "()Landroidx/viewbinding/ViewBinding;",
        "S",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "binding",
        "Lcom/im/freechat/base/a;",
        "J",
        "()Lcom/im/freechat/base/a;",
        "viewModel",
        "<init>",
        "()V",
        "app_prodRelease"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic G(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->P(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V

    return-void
.end method

.method public static synthetic H(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->O(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V

    return-void
.end method

.method public static synthetic N(Lcom/im/freechat/base/BaseViewModelActivity;Ljava/lang/Enum;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    invoke-static {p2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/base/BaseViewModelActivity;->M(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final O(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo4/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/base/a$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->U(Lcom/im/freechat/base/a$b;)V

    :cond_0
    return-void
.end method

.method private static final P(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo4/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/base/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/base/a$a;->e()Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/base/a$a;->f()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->M(Ljava/lang/Enum;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final I()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/base/BaseViewModelActivity;->a:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract J()Lcom/im/freechat/base/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/im/freechat/base/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract M(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .param p1    # Ljava/lang/Enum;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract R(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
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

.method protected final S(Landroidx/viewbinding/ViewBinding;)V
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

    iput-object p1, p0, Lcom/im/freechat/base/BaseViewModelActivity;->a:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public final U(Lcom/im/freechat/base/a$b;)V
    .locals 2
    .param p1    # Lcom/im/freechat/base/a$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/im/freechat/base/a$b$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/im/freechat/base/a$b$a;

    invoke-virtual {p1}, Lcom/im/freechat/base/a$b$a;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/im/freechat/base/a$b$a;->a()[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(msg.msgId, *msg.formatArgs)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/extend/f;->A(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/im/freechat/base/a$b$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/im/freechat/base/a$b$b;

    invoke-virtual {p1}, Lcom/im/freechat/base/a$b$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/im/freechat/extend/f;->A(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract init()V
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

    invoke-virtual {p0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->R(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->S(Landroidx/viewbinding/ViewBinding;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/BaseViewModelActivity;->I()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/base/BaseViewModelActivity;->init()V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/BaseViewModelActivity;->J()Lcom/im/freechat/base/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/base/a;->b()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/im/freechat/base/c;

    invoke-direct {v0, p0}, Lcom/im/freechat/base/c;-><init>(Lcom/im/freechat/base/BaseViewModelActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/base/BaseViewModelActivity;->J()Lcom/im/freechat/base/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/base/a;->a()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/im/freechat/base/b;

    invoke-direct {v0, p0}, Lcom/im/freechat/base/b;-><init>(Lcom/im/freechat/base/BaseViewModelActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
