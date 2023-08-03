.class public abstract Lcom/google/android/exoplayer2/c2;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final a:F = -1.0f

.field static final b:I = -0x1

.field static final c:I = 0x0

.field static final d:I = 0x1

.field static final e:I = 0x2

.field static final f:I = 0x3

.field static final g:I

.field public static final h:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/c2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/b2;

    sput-object v0, Lcom/google/android/exoplayer2/c2;->h:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/c2;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/c2;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/c2;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/c2;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/c2;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/q2;->n:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/c2;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Encountered unknown rating type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/m2;->o:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/c2;

    return-object p0

    .line 5
    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/q1;->l:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/c2;

    return-object p0

    .line 6
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/x0;->n:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/c2;

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()Z
.end method
