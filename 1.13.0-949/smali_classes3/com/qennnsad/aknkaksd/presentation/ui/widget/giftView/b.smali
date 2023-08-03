.class public Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;
.super Landroid/widget/BaseAdapter;
.source "GiftGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:Lcom/qennnsad/aknkaksd/data/repository/m;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;IZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d:I

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lf5/d;

    invoke-static {p1, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-interface {p1}, Lf5/d;->c()Lf5/e;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->f:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 7
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d:I

    .line 8
    iput-boolean p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->e:Z

    .line 9
    iput-boolean p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->g:Z

    if-nez p2, :cond_0

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    goto :goto_1

    .line 11
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;)Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->f:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object p0
.end method


# virtual methods
.method public d(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eq p2, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->g:Z

    if-eqz p3, :cond_0

    const p3, 0x7f0d0100

    goto :goto_0

    :cond_0
    const p3, 0x7f0d00ff

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;

    invoke-direct {p3, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p3, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->a(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Z)V

    return-object p2
.end method
