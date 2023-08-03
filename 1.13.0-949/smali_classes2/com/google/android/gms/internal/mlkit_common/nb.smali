.class public final Lcom/google/android/gms/internal/mlkit_common/nb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/ab;


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_common/w7;

.field private b:Lcom/google/android/gms/internal/mlkit_common/w9;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/w7;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/w9;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/w9;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->b:Lcom/google/android/gms/internal/mlkit_common/w9;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/yb;->a()Lcom/google/android/gms/internal/mlkit_common/yb;

    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/mlkit_common/w7;)Lcom/google/android/gms/internal/mlkit_common/ab;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/nb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/nb;-><init>(Lcom/google/android/gms/internal/mlkit_common/w7;I)V

    return-object v0
.end method

.method public static g()Lcom/google/android/gms/internal/mlkit_common/ab;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/nb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/w7;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/nb;-><init>(Lcom/google/android/gms/internal/mlkit_common/w7;I)V

    return-object v0
.end method


# virtual methods
.method public final a(IZ)[B
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->b:Lcom/google/android/gms/internal/mlkit_common/w9;

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/w9;->f(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/w9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->b:Lcom/google/android/gms/internal/mlkit_common/w9;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/w9;->e(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/w9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->b:Lcom/google/android/gms/internal/mlkit_common/w9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/w9;->m()Lcom/google/android/gms/internal/mlkit_common/y9;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/w7;->j(Lcom/google/android/gms/internal/mlkit_common/y9;)Lcom/google/android/gms/internal/mlkit_common/w7;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/yb;->a()Lcom/google/android/gms/internal/mlkit_common/yb;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->k()Lcom/google/android/gms/internal/mlkit_common/y7;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/e;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/e;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/i6;->a:Lm3/a;

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/e;->h(Lm3/a;)Lcom/google/firebase/encoders/json/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/firebase/encoders/json/e;->i(Z)Lcom/google/firebase/encoders/json/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/e;->g()Lcom/google/firebase/encoders/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->k()Lcom/google/android/gms/internal/mlkit_common/y7;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/k0;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/k0;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/i6;->a:Lm3/a;

    .line 9
    invoke-interface {v0, p2}, Lm3/a;->a(Lm3/b;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/k0;->c()Lcom/google/android/gms/internal/mlkit_common/l0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/l0;->a(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 11
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/w7;->k()Lcom/google/android/gms/internal/mlkit_common/y7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/y7;->f()Lcom/google/android/gms/internal/mlkit_common/y9;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/y9;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/y9;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_common/w9;)Lcom/google/android/gms/internal/mlkit_common/ab;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->b:Lcom/google/android/gms/internal/mlkit_common/w9;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_common/zziu;)Lcom/google/android/gms/internal/mlkit_common/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->f(Lcom/google/android/gms/internal/mlkit_common/zziu;)Lcom/google/android/gms/internal/mlkit_common/w7;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/mlkit_common/c8;)Lcom/google/android/gms/internal/mlkit_common/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/nb;->a:Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->i(Lcom/google/android/gms/internal/mlkit_common/c8;)Lcom/google/android/gms/internal/mlkit_common/w7;

    return-object p0
.end method
