.class Lcom/google/appinventor/components/runtime/CloudDB$5;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->RemoveFirstFromList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 959
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 961
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 963
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    const/4 v1, 0x1

    :try_start_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v3, "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call(\'get\', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == \'table\') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  if (newValue == \"{}\") then     newValue = \"[]\"   end   redis.call(\'set\', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error(\'You can only remove elements from a list\');end"

    const-string v4, "68a7576e7dc283a8162d01e3e7c2d5c4ab3ff7a5"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$key:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->FirstRemoved(Ljava/lang/Object;)V
    :try_end_22
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_7 .. :try_end_22} :catch_23

    .line 967
    goto :goto_32

    .line 964
    :catch_23
    move-exception v2

    .line 965
    .local v2, "e":Lredis/clients/jedis/exceptions/JedisException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 966
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mflushJedis(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 968
    .end local v2    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :goto_32
    return-void
.end method
