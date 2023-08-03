.class final Lcom/google/android/exoplayer2/text/cea/c$a;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/cea/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/exoplayer2/text/a;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/b;->a:Lcom/google/android/exoplayer2/text/cea/b;

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/c$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/text/a$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/a$c;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/a$c;->A(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/a$c;->B(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/text/a$c;->t(FI)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/text/a$c;->u(I)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p6}, Lcom/google/android/exoplayer2/text/a$c;->w(F)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p7}, Lcom/google/android/exoplayer2/text/a$c;->x(I)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p8}, Lcom/google/android/exoplayer2/text/a$c;->z(F)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object p1

    if-eqz p9, :cond_0

    .line 10
    invoke-virtual {p1, p10}, Lcom/google/android/exoplayer2/text/a$c;->E(I)Lcom/google/android/exoplayer2/text/a$c;

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/a$c;->a()Lcom/google/android/exoplayer2/text/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/c$a;->a:Lcom/google/android/exoplayer2/text/a;

    .line 12
    iput p11, p0, Lcom/google/android/exoplayer2/text/cea/c$a;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/text/cea/c$a;Lcom/google/android/exoplayer2/text/cea/c$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/cea/c$a;->c(Lcom/google/android/exoplayer2/text/cea/c$a;Lcom/google/android/exoplayer2/text/cea/c$a;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/c$a;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/text/cea/c$a;Lcom/google/android/exoplayer2/text/cea/c$a;)I
    .locals 0

    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/c$a;->b:I

    iget p0, p0, Lcom/google/android/exoplayer2/text/cea/c$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
