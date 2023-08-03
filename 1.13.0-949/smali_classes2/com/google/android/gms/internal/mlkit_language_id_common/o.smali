.class final Lcom/google/android/gms/internal/mlkit_language_id_common/o;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/e;


# static fields
.field private static final f:Ljava/nio/charset/Charset;

.field private static final g:Lcom/google/firebase/encoders/c;

.field private static final h:Lcom/google/firebase/encoders/c;

.field private static final i:Lcom/google/firebase/encoders/d;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Lcom/google/firebase/encoders/d;

.field private final e:Lcom/google/android/gms/internal/mlkit_language_id_common/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->f:Ljava/nio/charset/Charset;

    const-string v0, "key"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->g:Lcom/google/firebase/encoders/c;

    const-string v0, "value"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    .line 6
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->h:Lcom/google/firebase/encoders/c;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/n;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->i:Lcom/google/firebase/encoders/d;

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/s;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/o;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/s;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->d:Lcom/google/firebase/encoders/d;

    return-void
.end method

.method private static A(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private final B(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7f

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private final C(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static synthetic u(Ljava/util/Map$Entry;Lcom/google/firebase/encoders/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->g:Lcom/google/firebase/encoders/c;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->h:Lcom/google/firebase/encoders/c;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    return-void
.end method

.method private static v(Lcom/google/firebase/encoders/c;)I
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final w(Lcom/google/firebase/encoders/d;Ljava/lang/Object;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/k;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-interface {p1, p2, p0}, Lcom/google/firebase/encoders/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a()J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    .line 5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    const/4 v0, 0x1

    :try_start_5
    new-array v1, v0, [Ljava/lang/Class;

    .line 7
    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    .line 8
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 9
    :catch_0
    :goto_0
    throw p1
.end method

.method private static x(Lcom/google/firebase/encoders/c;)Lcom/google/android/gms/internal/mlkit_language_id_common/m;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final y(Lcom/google/firebase/encoders/d;Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_language_id_common/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->w(Lcom/google/firebase/encoders/d;Ljava/lang/Object;)J

    move-result-wide v0

    if-eqz p4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->v(Lcom/google/firebase/encoders/c;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->C(J)V

    .line 5
    invoke-interface {p1, p3, p0}, Lcom/google/firebase/encoders/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final z(Lcom/google/firebase/encoders/f;Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_language_id_common/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/s;

    invoke-virtual {v0, p2, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/s;->b(Lcom/google/firebase/encoders/c;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/s;

    .line 2
    invoke-interface {p1, p3, p2}, Lcom/google/firebase/encoders/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/firebase/encoders/c;DZ)Lcom/google/firebase/encoders/e;
    .locals 2
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double p4, p2, v0

    if-nez p4, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->v(Lcom/google/firebase/encoders/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->A(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public final synthetic b(Lcom/google/firebase/encoders/c;Z)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method public final synthetic c(Lcom/google/firebase/encoders/c;J)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->r(Lcom/google/firebase/encoders/c;JZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method public final synthetic d(Lcom/google/firebase/encoders/c;I)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method final e(Lcom/google/firebase/encoders/c;FZ)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->v(Lcom/google/firebase/encoders/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->A(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public final f(Lcom/google/firebase/encoders/c;F)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->e(Lcom/google/firebase/encoders/c;FZ)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method public final g(Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "nested() is not implemented for protobuf encoding."

    invoke-direct {p1, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lcom/google/firebase/encoders/c;D)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a(Lcom/google/firebase/encoders/c;DZ)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method public final i(Ljava/lang/String;Z)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/encoders/c;->d(Ljava/lang/String;)Lcom/google/firebase/encoders/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method public final j(Ljava/lang/String;D)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/encoders/c;->d(Ljava/lang/String;)Lcom/google/firebase/encoders/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a(Lcom/google/firebase/encoders/c;DZ)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method public final k(Ljava/lang/String;J)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/encoders/c;->d(Ljava/lang/String;)Lcom/google/firebase/encoders/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->r(Lcom/google/firebase/encoders/c;JZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method public final l(Ljava/lang/String;I)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/encoders/c;->d(Ljava/lang/String;)Lcom/google/firebase/encoders/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method public final m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->o(Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method final o(Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/e;
    .locals 2
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->v(Lcom/google/firebase/encoders/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 9
    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 10
    check-cast p2, Ljava/util/Collection;

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p1, p3, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->o(Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/e;

    goto :goto_0

    :cond_3
    return-object p0

    .line 13
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 14
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->i:Lcom/google/firebase/encoders/d;

    .line 16
    invoke-direct {p0, v0, p1, p3, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->y(Lcom/google/firebase/encoders/d;Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    goto :goto_1

    :cond_5
    return-object p0

    .line 17
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a(Lcom/google/firebase/encoders/c;DZ)Lcom/google/firebase/encoders/e;

    return-object p0

    .line 19
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 20
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->e(Lcom/google/firebase/encoders/c;FZ)Lcom/google/firebase/encoders/e;

    return-object p0

    .line 21
    :cond_8
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 22
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->r(Lcom/google/firebase/encoders/c;JZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0

    .line 23
    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 24
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0

    .line 26
    :cond_a
    instance-of v0, p2, [B

    if-eqz v0, :cond_c

    .line 27
    check-cast p2, [B

    if-eqz p3, :cond_b

    array-length p3, p2

    if-nez p3, :cond_b

    return-object p0

    .line 28
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->v(Lcom/google/firebase/encoders/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    array-length p1, p2

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->b:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/d;

    if-eqz v0, :cond_d

    .line 33
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->y(Lcom/google/firebase/encoders/d;Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/f;

    if-eqz v0, :cond_e

    .line 35
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->z(Lcom/google/firebase/encoders/f;Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0

    .line 36
    :cond_e
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_language_id_common/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 37
    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id_common/l;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/l;->zza()I

    move-result p2

    .line 38
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0

    .line 39
    :cond_f
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_10

    .line 40
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->d:Lcom/google/firebase/encoders/d;

    .line 42
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->y(Lcom/google/firebase/encoders/d;Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    return-object p0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/encoders/c;->d(Ljava/lang/String;)Lcom/google/firebase/encoders/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->o(Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method final q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;
    .locals 1
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 1
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->x(Lcom/google/firebase/encoders/c;)Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    move-result-object p1

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zzb()Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->A(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    add-int p1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    :goto_1
    return-object p0
.end method

.method final r(Lcom/google/firebase/encoders/c;JZ)Lcom/google/android/gms/internal/mlkit_language_id_common/o;
    .locals 2
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 1
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->x(Lcom/google/firebase/encoders/c;)Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    move-result-object p1

    .line 2
    sget-object p4, Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zzb()Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->A(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    add-long v0, p2, p2

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->C(J)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->B(I)V

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->C(J)V

    :goto_1
    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/firebase/encoders/c;->d(Ljava/lang/String;)Lcom/google/firebase/encoders/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->g(Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/e;

    move-result-object p1

    return-object p1
.end method

.method final t(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/o;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p0}, Lcom/google/firebase/encoders/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No encoder for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
