.class public final synthetic Lcom/google/android/play/core/assetpacks/z3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/assetpacks/z3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/z3;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/z3;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/z3;->a:Lcom/google/android/play/core/assetpacks/z3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/a4;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
