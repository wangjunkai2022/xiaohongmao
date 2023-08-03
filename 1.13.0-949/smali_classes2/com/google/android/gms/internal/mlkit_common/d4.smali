.class final Lcom/google/android/gms/internal/mlkit_common/d4;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/encoders/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_common/d4;

.field private static final b:Lcom/google/firebase/encoders/c;

.field private static final c:Lcom/google/firebase/encoders/c;

.field private static final d:Lcom/google/firebase/encoders/c;

.field private static final e:Lcom/google/firebase/encoders/c;

.field private static final f:Lcom/google/firebase/encoders/c;

.field private static final g:Lcom/google/firebase/encoders/c;

.field private static final h:Lcom/google/firebase/encoders/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/d4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/d4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->a:Lcom/google/android/gms/internal/mlkit_common/d4;

    const-string v0, "options"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->b:Lcom/google/firebase/encoders/c;

    const-string v0, "roughDownloadDurationMs"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->c:Lcom/google/firebase/encoders/c;

    const-string v0, "errorCode"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->d:Lcom/google/firebase/encoders/c;

    const-string v0, "exactDownloadDurationMs"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->e:Lcom/google/firebase/encoders/c;

    const-string v0, "downloadStatus"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->f:Lcom/google/firebase/encoders/c;

    const-string v0, "downloadFailureStatus"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->g:Lcom/google/firebase/encoders/c;

    const-string v0, "mddDownloadErrorCodes"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->h:Lcom/google/firebase/encoders/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/c8;

    check-cast p2, Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->b:Lcom/google/firebase/encoders/c;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/c8;->c()Lcom/google/android/gms/internal/mlkit_common/j8;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->c:Lcom/google/firebase/encoders/c;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/c8;->f()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->d:Lcom/google/firebase/encoders/c;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/c8;->a()Lcom/google/android/gms/internal/mlkit_common/zzit;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->e:Lcom/google/firebase/encoders/c;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/c8;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->f:Lcom/google/firebase/encoders/c;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/c8;->b()Lcom/google/android/gms/internal/mlkit_common/zziz;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/d4;->g:Lcom/google/firebase/encoders/c;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/c8;->d()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/d4;->h:Lcom/google/firebase/encoders/c;

    const/4 v0, 0x0

    .line 8
    invoke-interface {p2, p1, v0}, Lcom/google/firebase/encoders/e;->m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    return-void
.end method
