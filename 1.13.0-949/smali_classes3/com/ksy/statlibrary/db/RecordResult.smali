.class public Lcom/ksy/statlibrary/db/RecordResult;
.super Ljava/lang/Object;
.source "RecordResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordResult"


# instance fields
.field private headerJson:Lorg/json/JSONObject;

.field public idBuffer:Ljava/lang/StringBuffer;

.field private jsonArray:Lorg/json/JSONArray;

.field private uniqname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->idBuffer:Ljava/lang/StringBuffer;

    .line 3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->jsonArray:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->headerJson:Lorg/json/JSONObject;

    .line 5
    iput-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->uniqname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecordValue()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->headerJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "KSY_ANDROID_LOG"

    const-string v1, "RecordResult should put header first"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "header"

    .line 4
    iget-object v2, p0, Lcom/ksy/statlibrary/db/RecordResult;->headerJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    .line 5
    iget-object v2, p0, Lcom/ksy/statlibrary/db/RecordResult;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->uniqname:Ljava/lang/String;

    return-object v0
.end method

.method public putHeader(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ksy/statlibrary/db/RecordResult;->headerJson:Lorg/json/JSONObject;

    return-void
.end method

.method public putJson(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->jsonArray:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->idBuffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksy/statlibrary/db/RecordResult;->idBuffer:Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public setUniqname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksy/statlibrary/db/RecordResult;->uniqname:Ljava/lang/String;

    return-void
.end method
