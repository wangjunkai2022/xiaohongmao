.class public Lcom/ksy/statlibrary/util/PreferenceUtil;
.super Ljava/lang/Object;
.source "PreferenceUtil.java"


# static fields
.field public static final INTERVAL:Ljava/lang/String; = "interval"

.field private static final INTERVAL_KEY:Ljava/lang/String; = "interval_key"

.field private static final LAST_INTERVAL_KEY:Ljava/lang/String; = "last_interval_time"

.field private static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static commitInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static commitLong(Ljava/lang/String;J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static commitString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3
    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntervalTime()I
    .locals 2

    const-string v0, "interval_key"

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastIntervalTime()J
    .locals 3

    const-string v0, "last_interval_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-wide p1

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "interval"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static isAfterTwoWeek(J)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getLastIntervalTime()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getLastIntervalTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x48190800

    cmp-long v3, p0, v0

    if-ltz v3, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static removeAll()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p0, Lcom/ksy/statlibrary/util/PreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveInterval(I)V
    .locals 1

    const-string v0, "interval_key"

    invoke-static {v0, p0}, Lcom/ksy/statlibrary/util/PreferenceUtil;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static saveLastIntervalTime(J)V
    .locals 1

    const-string v0, "last_interval_time"

    invoke-static {v0, p0, p1}, Lcom/ksy/statlibrary/util/PreferenceUtil;->commitLong(Ljava/lang/String;J)V

    return-void
.end method
