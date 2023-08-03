.class final Lcom/google/common/base/d$k;
.super Lcom/google/common/base/d$i;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final b:C

.field private final c:C


# direct methods
.method constructor <init>(CC)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/d$i;-><init>()V

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    iput-char p1, p0, Lcom/google/common/base/d$k;->b:C

    .line 4
    iput-char p2, p0, Lcom/google/common/base/d$k;->c:C

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/common/base/d$k;->b:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/common/base/d$k;->c:C

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method Q(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lh3/c;
    .end annotation

    iget-char v0, p0, Lcom/google/common/base/d$k;->b:C

    iget-char v1, p0, Lcom/google/common/base/d$k;->c:C

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/common/base/d$k;->b:C

    .line 2
    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/common/base/d$k;->c:C

    .line 3
    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
