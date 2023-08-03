.class public final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;
.super Ljava/lang/Object;
.source "GiphyDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018JW\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062$\u0008\u0002\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0008j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\tH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000fR\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;",
        "",
        "Lcom/giphy/sdk/ui/GPHSettings;",
        "settings",
        "",
        "apiKey",
        "",
        "verificationMode",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "metadata",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment;",
        "e",
        "(Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;",
        "KEY_API_KEY",
        "Ljava/lang/String;",
        "KEY_MEDIA_TYPE",
        "KEY_METADATA_KEY",
        "KEY_SCREEN_CHANGE",
        "KEY_SETTINGS",
        "KEY_VERIFICATION_MODE",
        "MEDIA_DELIVERY_KEY",
        "SEARCH_TERM_KEY",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
    .locals 21

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/GPHSettings;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x1ffff

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/giphy/sdk/ui/GPHSettings;-><init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    :goto_0
    and-int/lit8 v1, p5, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_3

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, p0

    goto :goto_3

    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v3, p4

    :goto_3
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;->e(Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;->f(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/giphy/sdk/ui/GPHSettings;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
    .locals 7
    .param p1    # Lcom/giphy/sdk/ui/GPHSettings;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;->f(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
    .locals 7
    .param p1    # Lcom/giphy/sdk/ui/GPHSettings;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;->f(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
    .locals 7
    .param p1    # Lcom/giphy/sdk/ui/GPHSettings;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;->f(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
    .locals 3
    .param p1    # Lcom/giphy/sdk/ui/GPHSettings;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/ui/GPHSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/giphy/sdk/ui/views/GiphyDialogFragment;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gph_giphy_settings"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    const-string p1, "gph_giphy_api_key"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "gph_giphy_verification_mode"

    .line 6
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string p1, "gph_giphy_metadata_key"

    .line 7
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
