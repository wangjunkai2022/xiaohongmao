.class public final synthetic Lcom/rudresh/videocompression/videocompression/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/rudresh/videocompression/videocompression/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rudresh/videocompression/videocompression/j;

    invoke-direct {v0}, Lcom/rudresh/videocompression/videocompression/j;-><init>()V

    sput-object v0, Lcom/rudresh/videocompression/videocompression/j;->a:Lcom/rudresh/videocompression/videocompression/j;

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

    check-cast p1, Lcom/rudresh/videocompression/videocompression/k$a;

    check-cast p2, Lcom/rudresh/videocompression/videocompression/k$a;

    invoke-static {p1, p2}, Lcom/rudresh/videocompression/videocompression/k;->a(Lcom/rudresh/videocompression/videocompression/k$a;Lcom/rudresh/videocompression/videocompression/k$a;)I

    move-result p1

    return p1
.end method
