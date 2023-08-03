.class public Lcom/google/android/play/core/splitinstall/e$a;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/splitinstall/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/e$a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/e$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/q;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/e$a;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/e$a;->b:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/play/core/splitinstall/e$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/e$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/play/core/splitinstall/e$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/e$a;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/Locale;)Lcom/google/android/play/core/splitinstall/e$a;
    .locals 1
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/e$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/e$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/e$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lcom/google/android/play/core/splitinstall/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/splitinstall/e;-><init>(Lcom/google/android/play/core/splitinstall/e$a;Lcom/google/android/play/core/splitinstall/r;)V

    return-object v0
.end method
