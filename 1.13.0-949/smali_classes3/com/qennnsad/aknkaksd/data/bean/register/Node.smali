.class public Lcom/qennnsad/aknkaksd/data/bean/register/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private data:Ljava/lang/Double;

.field private next:Lcom/qennnsad/aknkaksd/data/bean/register/Node;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->data:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->data:Ljava/lang/Double;

    return-object v0
.end method

.method public getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->next:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    return-object v0
.end method

.method public setData(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->data:Ljava/lang/Double;

    return-void
.end method

.method public setNext(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->next:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    return-void
.end method
