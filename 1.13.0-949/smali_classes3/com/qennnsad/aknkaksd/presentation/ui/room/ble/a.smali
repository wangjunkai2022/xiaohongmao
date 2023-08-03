.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;,
        Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;)Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->g(Lcom/clj/fastble/data/BleDevice;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->e()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 3
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clj/fastble/a;->J(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 3
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clj/fastble/a;->J(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(I)Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/data/BleDevice;

    return-object p1
.end method

.method public g(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 3
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->f(I)Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->a:Landroid/content/Context;

    const p3, 0x7f0d0030

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;

    invoke-direct {p3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0369

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0782

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0781

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0783

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0405

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03fc

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0132

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->g:Landroid/widget/Button;

    const v0, 0x7f0a012c

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->h:Landroid/widget/Button;

    const v0, 0x7f0a0131

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->i:Landroid/widget/Button;

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->f(I)Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/a;->J(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v3

    .line 19
    iget-object v4, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->d:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->a:Landroid/widget/ImageView;

    const v3, 0x7f0803ab

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->b:Landroid/widget/TextView;

    const v3, -0xe2164a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->a:Landroid/widget/ImageView;

    const v3, 0x7f0803ac

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->b:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    :cond_2
    :goto_1
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->h:Landroid/widget/Button;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->g:Landroid/widget/Button;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$b;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p3, p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$e;->i:Landroid/widget/Button;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$c;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public h(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;

    return-void
.end method
