.class final Lcom/google/common/base/d$n;
.super Lcom/google/common/base/d$i;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# instance fields
.field private final b:C

.field private final c:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/d$i;-><init>()V

    .line 2
    iput-char p1, p0, Lcom/google/common/base/d$n;->b:C

    .line 3
    iput-char p2, p0, Lcom/google/common/base/d$n;->c:C

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/common/base/d$n;->b:C

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/base/d$n;->c:C

    if-ne p1, v0, :cond_0

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
    iget-char v0, p0, Lcom/google/common/base/d$n;->b:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 2
    iget-char v0, p0, Lcom/google/common/base/d$n;->c:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.anyOf(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/common/base/d$n;->b:C

    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/common/base/d$n;->c:C

    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
