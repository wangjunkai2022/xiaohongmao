.class public final Lcom/im/freechat/ui/settings/data_usage/k$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NetworkUsageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/settings/data_usage/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/settings/data_usage/k$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/ui/settings/data_usage/k$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/im/freechat/domain/NetworkType;",
        "type",
        "",
        "c",
        "Lcom/im/freechat/domain/m;",
        "item",
        "",
        "b",
        "Lf4/q1;",
        "binding",
        "<init>",
        "(Lf4/q1;)V",
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
.field private final a:Lf4/q1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/q1;)V
    .locals 1
    .param p1    # Lf4/q1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/q1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/k$a;->a:Lf4/q1;

    return-void
.end method

.method private final c(Lcom/im/freechat/domain/NetworkType;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/im/freechat/ui/settings/data_usage/k$a$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lb4/b$s;->E9:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget p1, Lb4/b$s;->C9:I

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lb4/b$s;->K8:I

    goto :goto_0

    .line 5
    :cond_3
    sget p1, Lb4/b$s;->M9:I

    goto :goto_0

    .line 6
    :cond_4
    sget p1, Lb4/b$s;->m7:I

    :goto_0
    return p1
.end method


# virtual methods
.method public final b(Lcom/im/freechat/domain/m;)V
    .locals 3
    .param p1    # Lcom/im/freechat/domain/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/k$a;->a:Lf4/q1;

    iget-object v0, v0, Lf4/q1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/domain/m;->h()Lcom/im/freechat/domain/NetworkType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/im/freechat/ui/settings/data_usage/k$a;->c(Lcom/im/freechat/domain/NetworkType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/k$a;->a:Lf4/q1;

    iget-object v0, v0, Lf4/q1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/domain/m;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/im/freechat/extend/n;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/k$a;->a:Lf4/q1;

    iget-object v0, v0, Lf4/q1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/domain/m;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/im/freechat/extend/n;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
