.class final Lcom/google/android/gms/internal/mlkit_common/z5;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/encoders/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_common/z5;

.field private static final b:Lcom/google/firebase/encoders/c;

.field private static final c:Lcom/google/firebase/encoders/c;

.field private static final d:Lcom/google/firebase/encoders/c;

.field private static final e:Lcom/google/firebase/encoders/c;

.field private static final f:Lcom/google/firebase/encoders/c;

.field private static final g:Lcom/google/firebase/encoders/c;

.field private static final h:Lcom/google/firebase/encoders/c;

.field private static final i:Lcom/google/firebase/encoders/c;

.field private static final j:Lcom/google/firebase/encoders/c;

.field private static final k:Lcom/google/firebase/encoders/c;

.field private static final l:Lcom/google/firebase/encoders/c;

.field private static final m:Lcom/google/firebase/encoders/c;

.field private static final n:Lcom/google/firebase/encoders/c;

.field private static final o:Lcom/google/firebase/encoders/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/z5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/z5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->a:Lcom/google/android/gms/internal/mlkit_common/z5;

    const-string v0, "appId"

    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->b:Lcom/google/firebase/encoders/c;

    const-string v0, "appVersion"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->c:Lcom/google/firebase/encoders/c;

    const-string v0, "firebaseProjectId"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->d:Lcom/google/firebase/encoders/c;

    const-string v0, "mlSdkVersion"

    .line 16
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->e:Lcom/google/firebase/encoders/c;

    const-string v0, "tfliteSchemaVersion"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->f:Lcom/google/firebase/encoders/c;

    const-string v0, "gcmSenderId"

    .line 26
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x6

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->g:Lcom/google/firebase/encoders/c;

    const-string v0, "apiKey"

    .line 31
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 32
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x7

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->h:Lcom/google/firebase/encoders/c;

    const-string v0, "languages"

    .line 36
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->i:Lcom/google/firebase/encoders/c;

    const-string v0, "mlSdkInstanceId"

    .line 41
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 42
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0x9

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->j:Lcom/google/firebase/encoders/c;

    const-string v0, "isClearcutClient"

    .line 46
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 47
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0xa

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->k:Lcom/google/firebase/encoders/c;

    const-string v0, "isStandaloneMlkit"

    .line 51
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 52
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0xb

    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->l:Lcom/google/firebase/encoders/c;

    const-string v0, "isJsonLogging"

    .line 56
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 57
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0xc

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->m:Lcom/google/firebase/encoders/c;

    const-string v0, "buildLevel"

    .line 61
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 62
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0xd

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->n:Lcom/google/firebase/encoders/c;

    const-string v0, "optionalModuleVersion"

    .line 66
    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 67
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/16 v2, 0xe

    .line 68
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->o:Lcom/google/firebase/encoders/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/y9;

    check-cast p2, Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->b:Lcom/google/firebase/encoders/c;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->c:Lcom/google/firebase/encoders/c;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->d:Lcom/google/firebase/encoders/c;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->e:Lcom/google/firebase/encoders/c;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->f:Lcom/google/firebase/encoders/c;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->g:Lcom/google/firebase/encoders/c;

    .line 7
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->h:Lcom/google/firebase/encoders/c;

    .line 8
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->i:Lcom/google/firebase/encoders/c;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->a()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->j:Lcom/google/firebase/encoders/c;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->k:Lcom/google/firebase/encoders/c;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->l:Lcom/google/firebase/encoders/c;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->m:Lcom/google/firebase/encoders/c;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->n:Lcom/google/firebase/encoders/c;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/z5;->o:Lcom/google/firebase/encoders/c;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/y9;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    return-void
.end method
