.class public final Lcom/google/common/net/c$a;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Ljava/net/Inet4Address;

.field private final b:Ljava/net/Inet4Address;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V
    .locals 5
    .param p1    # Ljava/net/Inet4Address;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/net/Inet4Address;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const v1, 0xffff

    const/4 v2, 0x0

    if-ltz p3, :cond_0

    if-gt p3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "port \'%s\' is out of range (0 <= port <= 0xffff)"

    .line 2
    invoke-static {v3, v4, p3}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    if-ltz p4, :cond_1

    if-gt p4, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "flags \'%s\' is out of range (0 <= flags <= 0xffff)"

    .line 3
    invoke-static {v0, v1, p4}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/google/common/net/c;->a()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    iput-object p1, p0, Lcom/google/common/net/c$a;->a:Ljava/net/Inet4Address;

    .line 5
    invoke-static {}, Lcom/google/common/net/c;->a()Ljava/net/Inet4Address;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    iput-object p1, p0, Lcom/google/common/net/c$a;->b:Ljava/net/Inet4Address;

    .line 6
    iput p3, p0, Lcom/google/common/net/c$a;->c:I

    .line 7
    iput p4, p0, Lcom/google/common/net/c$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/net/Inet4Address;
    .locals 1

    iget-object v0, p0, Lcom/google/common/net/c$a;->b:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/common/net/c$a;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/net/c$a;->c:I

    return v0
.end method

.method public d()Ljava/net/Inet4Address;
    .locals 1

    iget-object v0, p0, Lcom/google/common/net/c$a;->a:Ljava/net/Inet4Address;

    return-object v0
.end method
