.class final Lcom/google/common/base/d$z;
.super Lcom/google/common/base/d;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "z"
.end annotation


# instance fields
.field final b:Lcom/google/common/base/d;

.field final c:Lcom/google/common/base/d;


# direct methods
.method constructor <init>(Lcom/google/common/base/d;Lcom/google/common/base/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/d;

    iput-object p1, p0, Lcom/google/common/base/d$z;->b:Lcom/google/common/base/d;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/d;

    iput-object p1, p0, Lcom/google/common/base/d$z;->c:Lcom/google/common/base/d;

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$z;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->B(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/base/d$z;->c:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->B(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method Q(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lh3/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/base/d$z;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->Q(Ljava/util/BitSet;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/base/d$z;->c:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->Q(Ljava/util/BitSet;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/d$z;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/d$z;->c:Lcom/google/common/base/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
