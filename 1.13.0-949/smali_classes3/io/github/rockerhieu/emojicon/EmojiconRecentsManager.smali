.class public Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;
.super Ljava/util/ArrayList;
.source "EmojiconRecentsManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = ","

.field private static final c:Ljava/lang/String; = "emojicon"

.field private static final d:Ljava/lang/String; = "recent_emojis"

.field private static final e:Ljava/lang/String; = "recent_page"

.field private static final f:Ljava/lang/Object;

.field private static g:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager; = null

.field private static h:I = 0x28


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->b()V

    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->a:Landroid/content/Context;

    const-string v1, "emojicon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recent_emojis"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->fromChars(Ljava/lang/String;)Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->add(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 4
    invoke-virtual {v3}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmoji()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ","

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "recent_emojis"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;
    .locals 2

    .line 1
    sget-object v0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->g:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->g:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    invoke-direct {v1, p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->g:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->g:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    return-object p0
.end method

.method public static setMaximumSize(I)V
    .locals 0

    sput p0, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->h:I

    return-void
.end method


# virtual methods
.method public add(ILio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez p1, :cond_0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget p2, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->h:I

    if-le p1, p2, :cond_1

    .line 9
    invoke-super {p0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget p2, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->h:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    .line 11
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->c()V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-virtual {p0, p1, p2}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->add(ILio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    return-void
.end method

.method public add(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)Z
    .locals 2

    .line 3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->h:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-super {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->c()V

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-virtual {p0, p1}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->add(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)Z

    move-result p1

    return p1
.end method

.method public getRecentPage()I
    .locals 3

    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recent_page"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public push(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->add(ILio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 2
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->c()V

    return p1
.end method

.method public setRecentPage(I)V
    .locals 2

    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
