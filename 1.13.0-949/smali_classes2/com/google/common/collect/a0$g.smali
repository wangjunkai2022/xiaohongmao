.class final Lcom/google/common/collect/a0$g;
.super Lcom/google/common/collect/g;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private b:I

.field final synthetic c:Lcom/google/common/collect/a0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    invoke-direct {p0}, Lcom/google/common/collect/g;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/a0;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/a0$g;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/a0$g;->b:I

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/a0$g;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/a0;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/a0$g;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    iget-object v1, v1, Lcom/google/common/collect/a0;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/a0$g;->b:I

    aget-object v1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    iget-object v1, p0, Lcom/google/common/collect/a0$g;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/a0;->c(Lcom/google/common/collect/a0;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/a0$g;->b:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a0$g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/a0$g;->e()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/a0$g;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    iget-object v1, v1, Lcom/google/common/collect/a0;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/a0$g;->e()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/a0$g;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    iget-object v1, p0, Lcom/google/common/collect/a0$g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/a0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/a0$g;->c:Lcom/google/common/collect/a0;

    iget-object v1, v1, Lcom/google/common/collect/a0;->d:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 5
    aput-object p1, v1, v0

    return-object v2
.end method
