.class public final Landroidx/paging/DataSource$Params;
.super Ljava/lang/Object;
.source "DataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0000\u0018\u0000*\u0008\u0008\u0002\u0010\u0001*\u00020\u00022\u00020\u0002B1\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/paging/DataSource$Params;",
        "K",
        "",
        "type",
        "Landroidx/paging/LoadType;",
        "key",
        "initialLoadSize",
        "",
        "placeholdersEnabled",
        "",
        "pageSize",
        "(Landroidx/paging/LoadType;Ljava/lang/Object;IZI)V",
        "getInitialLoadSize",
        "()I",
        "getKey",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getPageSize",
        "getPlaceholdersEnabled",
        "()Z",
        "getType$paging_common",
        "()Landroidx/paging/LoadType;",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final initialLoadSize:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final pageSize:I

.field private final placeholdersEnabled:Z

.field private final type:Landroidx/paging/LoadType;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/LoadType;Ljava/lang/Object;IZI)V
    .locals 1
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "TK;IZI)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/DataSource$Params;->type:Landroidx/paging/LoadType;

    .line 3
    iput-object p2, p0, Landroidx/paging/DataSource$Params;->key:Ljava/lang/Object;

    .line 4
    iput p3, p0, Landroidx/paging/DataSource$Params;->initialLoadSize:I

    .line 5
    iput-boolean p4, p0, Landroidx/paging/DataSource$Params;->placeholdersEnabled:Z

    .line 6
    iput p5, p0, Landroidx/paging/DataSource$Params;->pageSize:I

    .line 7
    sget-object p3, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq p1, p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key must be non-null for prepend/append"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getInitialLoadSize()I
    .locals 1

    iget v0, p0, Landroidx/paging/DataSource$Params;->initialLoadSize:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/DataSource$Params;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPageSize()I
    .locals 1

    iget v0, p0, Landroidx/paging/DataSource$Params;->pageSize:I

    return v0
.end method

.method public final getPlaceholdersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/paging/DataSource$Params;->placeholdersEnabled:Z

    return v0
.end method

.method public final getType$paging_common()Landroidx/paging/LoadType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/DataSource$Params;->type:Landroidx/paging/LoadType;

    return-object v0
.end method
