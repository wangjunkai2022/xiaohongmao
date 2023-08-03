.class Lcom/google/common/collect/v2$c;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/u2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u2<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u2<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/v2$c;->a:Lcom/google/common/collect/u2;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v2$c;->a:Lcom/google/common/collect/u2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/u2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/v2$c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/v2$c;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/v2$c;->a:Lcom/google/common/collect/u2;

    iget-object p1, p1, Lcom/google/common/collect/v2$c;->a:Lcom/google/common/collect/u2;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/v2$c;->a:Lcom/google/common/collect/u2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
