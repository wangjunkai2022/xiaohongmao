.class public Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AdapterWheel;
.super Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AdapterWheel;->adapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AdapterWheel;->adapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AdapterWheel;->adapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AdapterWheel;->adapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
