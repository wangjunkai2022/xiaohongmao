.class public Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/c;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/b;
.source "AdapterWheel.java"


# instance fields
.field private n:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/c;->n:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;

    return-void
.end method


# virtual methods
.method protected f(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/c;->n:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/c;->n:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;->getItemsCount()I

    move-result v0

    return v0
.end method

.method public q()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/adapters/c;->n:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/e;

    return-object v0
.end method
