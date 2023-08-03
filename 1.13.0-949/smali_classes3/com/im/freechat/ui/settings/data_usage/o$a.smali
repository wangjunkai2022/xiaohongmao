.class public final Lcom/im/freechat/ui/settings/data_usage/o$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StorageUsageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/settings/data_usage/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/settings/data_usage/o$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/ui/settings/data_usage/o$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/im/freechat/domain/CacheFileType;",
        "filesType",
        "",
        "g",
        "Lcom/im/freechat/domain/r;",
        "item",
        "",
        "d",
        "Lf4/s1;",
        "binding",
        "<init>",
        "(Lf4/s1;)V",
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
.field private final a:Lf4/s1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/s1;)V
    .locals 1
    .param p1    # Lf4/s1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/s1;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    return-void
.end method

.method public static synthetic b(Lcom/im/freechat/domain/r;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/settings/data_usage/o$a;->e(Lcom/im/freechat/domain/r;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/im/freechat/ui/settings/data_usage/o$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/data_usage/o$a;->f(Lcom/im/freechat/ui/settings/data_usage/o$a;Landroid/view/View;)V

    return-void
.end method

.method private static final e(Lcom/im/freechat/domain/r;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/domain/r;->g()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/im/freechat/domain/r;->i(Z)V

    return-void
.end method

.method private static final f(Lcom/im/freechat/ui/settings/data_usage/o$a;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    iget-object p0, p0, Lf4/s1;->b:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private final g(Lcom/im/freechat/domain/CacheFileType;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/im/freechat/ui/settings/data_usage/o$a$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lb4/b$s;->Q4:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget p1, Lb4/b$s;->R4:I

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lb4/b$s;->O4:I

    goto :goto_0

    .line 5
    :cond_3
    sget p1, Lb4/b$s;->P4:I

    :goto_0
    return p1
.end method


# virtual methods
.method public final d(Lcom/im/freechat/domain/r;)V
    .locals 3
    .param p1    # Lcom/im/freechat/domain/r;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    iget-object v0, v0, Lf4/s1;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/im/freechat/domain/r;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    iget-object v0, v0, Lf4/s1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/domain/r;->f()Lcom/im/freechat/domain/CacheFileType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/im/freechat/ui/settings/data_usage/o$a;->g(Lcom/im/freechat/domain/CacheFileType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    iget-object v0, v0, Lf4/s1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/domain/r;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/im/freechat/extend/n;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    iget-object v0, v0, Lf4/s1;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/im/freechat/ui/settings/data_usage/n;

    invoke-direct {v1, p1}, Lcom/im/freechat/ui/settings/data_usage/n;-><init>(Lcom/im/freechat/domain/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5
    iget-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/o$a;->a:Lf4/s1;

    invoke-virtual {p1}, Lf4/s1;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/im/freechat/ui/settings/data_usage/m;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/settings/data_usage/m;-><init>(Lcom/im/freechat/ui/settings/data_usage/o$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
