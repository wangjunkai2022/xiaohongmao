.class final Lcom/google/common/hash/x;
.super Lcom/google/common/hash/c;
.source "MessageDigestHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/x$b;,
        Lcom/google/common/hash/x$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 7
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/hash/x;->d:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/common/hash/x;->n(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/x;->a:Ljava/security/MessageDigest;

    .line 9
    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p3

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    if-gt p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bytes (%s) must be >= 4 and < %s"

    .line 10
    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/a0;->m(ZLjava/lang/String;II)V

    .line 11
    iput p2, p0, Lcom/google/common/hash/x;->b:I

    .line 12
    invoke-static {p1}, Lcom/google/common/hash/x;->o(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/hash/x;->c:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/hash/x;->n(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/x;->a:Ljava/security/MessageDigest;

    .line 3
    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/x;->b:I

    .line 4
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/hash/x;->d:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/common/hash/x;->o(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/hash/x;->c:Z

    return-void
.end method

.method private static n(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static o(Ljava/security/MessageDigest;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/hash/x;->b:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/common/hash/x;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/common/hash/x$b;

    iget-object v2, p0, Lcom/google/common/hash/x;->a:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    iget v3, p0, Lcom/google/common/hash/x;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/hash/x$b;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/x$a;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    :cond_0
    new-instance v0, Lcom/google/common/hash/x$b;

    iget-object v2, p0, Lcom/google/common/hash/x;->a:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/hash/x;->n(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iget v3, p0, Lcom/google/common/hash/x;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/hash/x$b;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/x$a;)V

    return-object v0
.end method

.method p()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/google/common/hash/x$c;

    iget-object v1, p0, Lcom/google/common/hash/x;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/x;->b:I

    iget-object v3, p0, Lcom/google/common/hash/x;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/x$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/x$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/x;->d:Ljava/lang/String;

    return-object v0
.end method
