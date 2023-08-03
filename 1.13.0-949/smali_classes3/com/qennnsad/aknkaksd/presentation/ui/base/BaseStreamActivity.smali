.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;
.super Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;
.source "BaseStreamActivity.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/base/n;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSwitchCompatOrMaterialCode"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity<",
        "TVB;>;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/String;

.field private final i:Lf5/e;

.field protected j:Lg5/a;

.field protected k:Lx4/a;

.field protected l:Lcom/qennnsad/aknkaksd/util/t0;

.field protected m:Lcom/qennnsad/aknkaksd/data/repository/m;

.field protected n:Lcom/qennnsad/aknkaksd/data/websocket/j;

.field public o:Lc5/b;

.field protected p:Z

.field private q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/Switch;

.field private t:Landroid/widget/Switch;

.field protected u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

.field private v:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

.field private w:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lf5/d;

    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/d;

    invoke-interface {v0}, Lf5/d;->c()Lf5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->i:Lf5/e;

    .line 4
    invoke-virtual {v0}, Lf5/e;->c()Lg5/a;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    .line 5
    invoke-virtual {v0}, Lf5/e;->a()Lx4/a;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    .line 6
    invoke-virtual {v0}, Lf5/e;->e()Lcom/qennnsad/aknkaksd/util/t0;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->l:Lcom/qennnsad/aknkaksd/util/t0;

    .line 7
    invoke-virtual {v0}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->m:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 8
    invoke-virtual {v0}, Lf5/e;->i()Lcom/qennnsad/aknkaksd/data/websocket/j;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n:Lcom/qennnsad/aknkaksd/data/websocket/j;

    .line 9
    invoke-virtual {v0}, Lf5/e;->b()Lc5/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->o:Lc5/b;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    return-void
.end method

.method private D0()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const v0, 0x7f0a036f

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/base/j;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/s1;->T(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 3
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/f1;->b(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/g0;->M6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/base/l;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/g0;->a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    :cond_0
    return-void
.end method

.method private G0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0, p1}, Lg5/a;->p0(I)V

    return-void
.end method

.method private H0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0, p1}, Lg5/a;->q0(I)V

    return-void
.end method

.method public static synthetic g0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->y0(Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V

    return-void
.end method

.method public static synthetic h0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic i0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->x0(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/Unit;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w0(Lkotlin/Unit;)V

    return-void
.end method

.method public static synthetic l0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->t0(Lkotlin/jvm/functions/Function1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic m0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->z0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic t0(Lkotlin/jvm/functions/Function1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->H0(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->N0(ZZ)V

    return-void
.end method

.method private synthetic u0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->G0(Z)V

    return-void
.end method

.method private synthetic v0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private synthetic w0(Lkotlin/Unit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic x0(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lb5/a;->g(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;Landroid/app/Activity;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic y0(Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/k;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/k;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->d0(Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private synthetic z0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->I0(Z)V

    return-void
.end method


# virtual methods
.method public A0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/l;->u(Landroid/app/Activity;Lg5/a;)V

    return-void
.end method

.method protected B0(Landroid/content/Intent;Z)V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 2

    const v0, 0x7f1302bd

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->b(IZ)V

    return-void
.end method

.method protected C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected E0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "popup"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "Window Popup Listener registered."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-static {p0, v0}, Lcom/qennnsad/aknkaksd/util/l;->C(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    :cond_0
    return-void
.end method

.method public F0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->G0(Z)V

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->H0(Z)V

    return-void
.end method

.method public I0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->s:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected J0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method public K0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method protected abstract L0()V
.end method

.method public M0(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    const v1, 0x7f130398

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->j(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public N0(ZZ)V
    .locals 2

    const v0, 0x7f0a02c8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_3

    const p1, 0x7f0a0775

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r:Landroid/widget/TextView;

    const p1, 0x7f0a03de

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/base/f;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r:Landroid/widget/TextView;

    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected abstract P0()V
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "Try to dismiss a dialog but dialog is null or already dismiss!"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final f0(I)Landroid/view/View;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public n()V
    .locals 2

    const v0, 0x7f1302ba

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->b(IZ)V

    return-void
.end method

.method protected abstract n0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/common/l<",
            "*>;"
        }
    .end annotation
.end method

.method protected o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n0()Lcom/qennnsad/aknkaksd/presentation/common/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "ViewModel has not been instantiated in this Activity."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->B0(Landroid/content/Intent;Z)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->L0()V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->D0()V

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r0()V

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->P0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->E0()V

    .line 2
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onResume()V

    return-void
.end method

.method public p(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    if-nez p1, :cond_2

    .line 4
    new-instance p1, Lcom/qennnsad/aknkaksd/util/dialog/c;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/util/dialog/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/dialog/c;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/util/dialog/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    return-object p1
.end method

.method public p0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public q0(ZLkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0d01c3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f0a06cc

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v0, 0x7f0a0669

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->s:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->s:Landroid/widget/Switch;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/h;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const p2, 0x7f0a066a

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->t:Landroid/widget/Switch;

    if-eqz p1, :cond_2

    .line 11
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {p2}, Lg5/a;->K()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->t:Landroid/widget/Switch;

    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/base/g;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method protected abstract r0()V
.end method

.method public s0()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
