.class Lcom/clj/fastble/scan/c$b;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/clj/fastble/scan/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/clj/fastble/scan/c;

    invoke-direct {v0}, Lcom/clj/fastble/scan/c;-><init>()V

    sput-object v0, Lcom/clj/fastble/scan/c$b;->a:Lcom/clj/fastble/scan/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/clj/fastble/scan/c;
    .locals 1

    sget-object v0, Lcom/clj/fastble/scan/c$b;->a:Lcom/clj/fastble/scan/c;

    return-object v0
.end method
