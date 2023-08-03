.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J&\u0010\u0008\u001a\u00020\u00062\u001e\u0010\u0007\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0004\u0012\u00020\u00060\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tR0\u0010\u000e\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkotlin/Function1;",
        "Lkotlin/Pair;",
        "",
        "",
        "",
        "callback",
        "e",
        "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
        "settingsBean",
        "c",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "itemCheckCallback",
        "Le5/d3;",
        "binding",
        "<init>",
        "(Le5/d3;)V",
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
.field private final a:Le5/d3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le5/d3;)V
    .locals 1
    .param p1    # Le5/d3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le5/d3;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->a:Le5/d3;

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final d(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$settingsBean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    new-instance p2, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "settingsBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->a:Le5/d3;

    .line 2
    iget-object v1, v0, Le5/d3;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, v0, Le5/d3;->b:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;->getEnabled()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 5
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final e(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method
