.class final Lcom/google/common/hash/x$b;
.super Lcom/google/common/hash/a;
.source "MessageDigestHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/security/MessageDigest;

.field private final c:I

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    .line 4
    iput p2, p0, Lcom/google/common/hash/x$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/x$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/x$b;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/hash/x$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public i()Lcom/google/common/hash/l;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/x$b;->o()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/hash/x$b;->d:Z

    .line 3
    iget v0, p0, Lcom/google/common/hash/x$b;->c:I

    iget-object v1, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/l;->j([B)Lcom/google/common/hash/l;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/x$b;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/l;->j([B)Lcom/google/common/hash/l;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected k(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/x$b;->o()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected l(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/x$b;->o()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected n([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/x$b;->o()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/x$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
