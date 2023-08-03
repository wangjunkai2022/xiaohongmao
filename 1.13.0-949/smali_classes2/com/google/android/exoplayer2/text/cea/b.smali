.class public final synthetic Lcom/google/android/exoplayer2/text/cea/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/text/cea/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/cea/b;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/b;->a:Lcom/google/android/exoplayer2/text/cea/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/text/cea/c$a;

    check-cast p2, Lcom/google/android/exoplayer2/text/cea/c$a;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/c$a;->a(Lcom/google/android/exoplayer2/text/cea/c$a;Lcom/google/android/exoplayer2/text/cea/c$a;)I

    move-result p1

    return p1
.end method
