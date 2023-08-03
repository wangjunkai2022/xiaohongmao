.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/na;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id_common/ba;


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

.field private b:Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->c:I

    return-void
.end method

.method public static e(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/na;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;I)V

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;I)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/na;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/na;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;I)V

    return-object p1
.end method


# virtual methods
.method public final a(IZ)[B
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

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

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->f(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->e(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->m()Lcom/google/android/gms/internal/mlkit_language_id_common/e9;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/e9;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->g()Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/e;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/e;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o5;->a:Lm3/a;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->g()Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_language_id_common/q;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/q;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o5;->a:Lm3/a;

    .line 9
    invoke-interface {v0, p2}, Lm3/a;->a(Lm3/b;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->a(Ljava/lang/Object;)[B

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->g()Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c7;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/e9;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/e9;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ha;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/e9;->k()Ljava/lang/String;

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

.method public final c(Lcom/google/android/gms/internal/mlkit_language_id_common/c9;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    return-object p0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->c:I

    return v0
.end method
