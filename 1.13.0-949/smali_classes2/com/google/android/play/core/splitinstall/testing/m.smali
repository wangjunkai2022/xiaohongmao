.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/m;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/splitinstall/testing/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/m;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/testing/m;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/m;->a:Lcom/google/android/play/core/splitinstall/testing/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    sget v0, Lcom/google/android/play/core/splitinstall/testing/a;->q:I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
