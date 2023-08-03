.class public final Ll4/e;
.super Landroidx/fragment/app/Fragment;
.source "AttachmentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J&\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Ll4/e;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "",
        "onViewCreated",
        "onDestroyView",
        "Lf4/j;",
        "nullableBinding",
        "Lf4/j;",
        "Y",
        "()Lf4/j;",
        "d0",
        "(Lf4/j;)V",
        "<init>",
        "()V",
        "a",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final b:Ll4/e$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private a:Lf4/j;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll4/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll4/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ll4/e;->b:Ll4/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic U(Ll4/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ll4/e;->b0(Ll4/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Ll4/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ll4/e;->Z(Ll4/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Ll4/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ll4/e;->c0(Ll4/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Ll4/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ll4/e;->a0(Ll4/e;Landroid/view/View;)V

    return-void
.end method

.method private static final Z(Ll4/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$b;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$b;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->L3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;)V

    :cond_1
    return-void
.end method

.method private static final a0(Ll4/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$a;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$a;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->L3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;)V

    :cond_1
    return-void
.end method

.method private static final b0(Ll4/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$d;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$d;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->L3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;)V

    :cond_1
    return-void
.end method

.method private static final c0(Ll4/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->NONE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->U3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final Y()Lf4/j;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Ll4/e;->a:Lf4/j;

    return-object v0
.end method

.method public final d0(Lf4/j;)V
    .locals 0
    .param p1    # Lf4/j;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Ll4/e;->a:Lf4/j;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lf4/j;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/j;

    move-result-object p1

    iput-object p1, p0, Ll4/e;->a:Lf4/j;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lf4/j;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll4/e;->a:Lf4/j;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Ll4/e;->a:Lf4/j;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p1, Lf4/j;->e:Landroid/widget/LinearLayout;

    new-instance v0, Ll4/b;

    invoke-direct {v0, p0}, Ll4/b;-><init>(Ll4/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p1, Lf4/j;->d:Landroid/widget/LinearLayout;

    new-instance v0, Ll4/d;

    invoke-direct {v0, p0}, Ll4/d;-><init>(Ll4/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p2, p1, Lf4/j;->c:Landroid/widget/LinearLayout;

    new-instance v0, Ll4/a;

    invoke-direct {v0, p0}, Ll4/a;-><init>(Ll4/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p1, Lf4/j;->b:Landroid/widget/ImageView;

    new-instance p2, Ll4/c;

    invoke-direct {p2, p0}, Ll4/c;-><init>(Ll4/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
