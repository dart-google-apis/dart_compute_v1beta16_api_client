part of compute_v1beta16_api;

/** An access configuration attached to an instance's network interface. */
class AccessConfig {

  /** Type of the resource. */
  core.String kind;

  /** Name of this access configuration. */
  core.String name;

  /** An external IP address associated with this instance. Specify an unused static IP address available to the project. If not specified, the external IP will be drawn from a shared ephemeral pool. */
  core.String natIP;

  /** Type of configuration. Must be set to "ONE_TO_ONE_NAT". This configures port-for-port NAT to the internet. */
  core.String type;

  /** Create new AccessConfig from JSON data */
  AccessConfig.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("natIP")) {
      natIP = json["natIP"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AccessConfig */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (natIP != null) {
      output["natIP"] = natIP;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AccessConfig */
  core.String toString() => JSON.encode(this.toJson());

}

/** A reserved address resource. */
class Address {

  /** The IP address represented by this resource. */
  core.String address;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** URL of the region where the address resides (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** The status of the address (output only). */
  core.String status;

  /** The resources that are using this address resource. */
  core.List<core.String> users;

  /** Create new Address from JSON data */
  Address.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("users")) {
      users = json["users"].toList();
    }
  }

  /** Create JSON Object for Address */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (users != null) {
      output["users"] = users.toList();
    }

    return output;
  }

  /** Return String representation of Address */
  core.String toString() => JSON.encode(this.toJson());

}

class AddressAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped address lists. */
  core.Map<core.String, AddressesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new AddressAggregatedList from JSON data */
  AddressAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new AddressesScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for AddressAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of AddressAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of address resources. */
class AddressList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The address resources. */
  core.List<Address> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new AddressList from JSON data */
  AddressList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Address.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for AddressList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of AddressList */
  core.String toString() => JSON.encode(this.toJson());

}

class AddressesScopedList {

  /** List of addresses contained in this scope. */
  core.List<Address> addresses;

  /** Informational warning which replaces the list of addresses when the list is empty. */
  AddressesScopedListWarning warning;

  /** Create new AddressesScopedList from JSON data */
  AddressesScopedList.fromJson(core.Map json) {
    if (json.containsKey("addresses")) {
      addresses = json["addresses"].map((addressesItem) => new Address.fromJson(addressesItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new AddressesScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for AddressesScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (addresses != null) {
      output["addresses"] = addresses.map((addressesItem) => addressesItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of AddressesScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of addresses when the list is empty. */
class AddressesScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<AddressesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new AddressesScopedListWarning from JSON data */
  AddressesScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new AddressesScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for AddressesScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of AddressesScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class AddressesScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new AddressesScopedListWarningData from JSON data */
  AddressesScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AddressesScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AddressesScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

/** An instance-attached disk resource. */
class AttachedDisk {

  /** Indicates that this is a boot disk. VM will use the first partition of the disk for its root filesystem. */
  core.bool boot;

  /** Persistent disk only; must be unique within the instance when specified. This represents a unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, a default will be chosen by the system. */
  core.String deviceName;

  /** A zero-based index to assign to this disk, where 0 is reserved for the boot disk. If not specified, the server will choose an appropriate value (output only). */
  core.int index;

  /** Type of the resource. */
  core.String kind;

  /** The mode in which to attach this disk, either "READ_WRITE" or "READ_ONLY". */
  core.String mode;

  /** Persistent disk only; the URL of the persistent disk resource. */
  core.String source;

  /** Type of the disk, either "SCRATCH" or "PERSISTENT". Note that persistent disks must be created before you can specify them here. */
  core.String type;

  /** Create new AttachedDisk from JSON data */
  AttachedDisk.fromJson(core.Map json) {
    if (json.containsKey("boot")) {
      boot = json["boot"];
    }
    if (json.containsKey("deviceName")) {
      deviceName = json["deviceName"];
    }
    if (json.containsKey("index")) {
      index = json["index"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mode")) {
      mode = json["mode"];
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AttachedDisk */
  core.Map toJson() {
    var output = new core.Map();

    if (boot != null) {
      output["boot"] = boot;
    }
    if (deviceName != null) {
      output["deviceName"] = deviceName;
    }
    if (index != null) {
      output["index"] = index;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (mode != null) {
      output["mode"] = mode;
    }
    if (source != null) {
      output["source"] = source;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AttachedDisk */
  core.String toString() => JSON.encode(this.toJson());

}

/** Deprecation status for a public resource. */
class DeprecationStatus {

  /** An optional RFC3339 timestamp on or after which the deprecation state of this resource will be changed to DELETED. */
  core.String deleted;

  /** An optional RFC3339 timestamp on or after which the deprecation state of this resource will be changed to DEPRECATED. */
  core.String deprecated;

  /** An optional RFC3339 timestamp on or after which the deprecation state of this resource will be changed to OBSOLETE. */
  core.String obsolete;

  /** A URL of the suggested replacement for the deprecated resource. The deprecated resource and its replacement must be resources of the same kind. */
  core.String replacement;

  /** The deprecation state. Can be "DEPRECATED", "OBSOLETE", or "DELETED". Operations which create a new resource using a "DEPRECATED" resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. New uses of "OBSOLETE" or "DELETED" resources will result in an error. */
  core.String state;

  /** Create new DeprecationStatus from JSON data */
  DeprecationStatus.fromJson(core.Map json) {
    if (json.containsKey("deleted")) {
      deleted = json["deleted"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = json["deprecated"];
    }
    if (json.containsKey("obsolete")) {
      obsolete = json["obsolete"];
    }
    if (json.containsKey("replacement")) {
      replacement = json["replacement"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for DeprecationStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (deleted != null) {
      output["deleted"] = deleted;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated;
    }
    if (obsolete != null) {
      output["obsolete"] = obsolete;
    }
    if (replacement != null) {
      output["replacement"] = replacement;
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of DeprecationStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** A persistent disk resource. */
class Disk {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** Internal use only. */
  core.String options;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Size of the persistent disk, specified in GB. This parameter is optional when creating a disk from a disk image or a snapshot, otherwise it is required. */
  core.int sizeGb;

  /** The source snapshot used to create this disk. Once the source snapshot has been deleted from the system, this field will be cleared, and will not be set even if a snapshot with the same name has been re-created. */
  core.String sourceSnapshot;

  /** The 'id' value of the snapshot used to create this disk. This value may be used to determine whether the disk was created from the current or a previous instance of a given disk snapshot. */
  core.String sourceSnapshotId;

  /** The status of disk creation (output only). */
  core.String status;

  /** URL of the zone where the disk resides (output only). */
  core.String zone;

  /** Create new Disk from JSON data */
  Disk.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("options")) {
      options = json["options"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sizeGb")) {
      sizeGb = (json["sizeGb"] is core.String) ? core.int.parse(json["sizeGb"]) : json["sizeGb"];
    }
    if (json.containsKey("sourceSnapshot")) {
      sourceSnapshot = json["sourceSnapshot"];
    }
    if (json.containsKey("sourceSnapshotId")) {
      sourceSnapshotId = json["sourceSnapshotId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Disk */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (options != null) {
      output["options"] = options;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sizeGb != null) {
      output["sizeGb"] = sizeGb;
    }
    if (sourceSnapshot != null) {
      output["sourceSnapshot"] = sourceSnapshot;
    }
    if (sourceSnapshotId != null) {
      output["sourceSnapshotId"] = sourceSnapshotId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Disk */
  core.String toString() => JSON.encode(this.toJson());

}

class DiskAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped disk lists. */
  core.Map<core.String, DisksScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new DiskAggregatedList from JSON data */
  DiskAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new DisksScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for DiskAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of DiskAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of persistent disk resources. */
class DiskList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The persistent disk resources. */
  core.List<Disk> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new DiskList from JSON data */
  DiskList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Disk.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for DiskList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of DiskList */
  core.String toString() => JSON.encode(this.toJson());

}

class DisksScopedList {

  /** List of disks contained in this scope. */
  core.List<Disk> disks;

  /** Informational warning which replaces the list of disks when the list is empty. */
  DisksScopedListWarning warning;

  /** Create new DisksScopedList from JSON data */
  DisksScopedList.fromJson(core.Map json) {
    if (json.containsKey("disks")) {
      disks = json["disks"].map((disksItem) => new Disk.fromJson(disksItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new DisksScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for DisksScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (disks != null) {
      output["disks"] = disks.map((disksItem) => disksItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of DisksScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of disks when the list is empty. */
class DisksScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<DisksScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new DisksScopedListWarning from JSON data */
  DisksScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new DisksScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for DisksScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of DisksScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class DisksScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new DisksScopedListWarningData from JSON data */
  DisksScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DisksScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DisksScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

/** A firewall resource. */
class Firewall {

  /** The list of rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection. */
  core.List<FirewallAllowed> allowed;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** URL of the network to which this firewall is applied; provided by the client when the firewall is created. */
  core.String network;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** A list of IP address blocks expressed in CIDR format which this rule applies to. One or both of sourceRanges and sourceTags may be set; an inbound connection is allowed if either the range or the tag of the source matches. */
  core.List<core.String> sourceRanges;

  /** A list of instance tags which this rule applies to. One or both of sourceRanges and sourceTags may be set; an inbound connection is allowed if either the range or the tag of the source matches. */
  core.List<core.String> sourceTags;

  /** A list of instance tags indicating sets of instances located on network which may make network connections as specified in allowed. If no targetTags are specified, the firewall rule applies to all instances on the specified network. */
  core.List<core.String> targetTags;

  /** Create new Firewall from JSON data */
  Firewall.fromJson(core.Map json) {
    if (json.containsKey("allowed")) {
      allowed = json["allowed"].map((allowedItem) => new FirewallAllowed.fromJson(allowedItem)).toList();
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceRanges")) {
      sourceRanges = json["sourceRanges"].toList();
    }
    if (json.containsKey("sourceTags")) {
      sourceTags = json["sourceTags"].toList();
    }
    if (json.containsKey("targetTags")) {
      targetTags = json["targetTags"].toList();
    }
  }

  /** Create JSON Object for Firewall */
  core.Map toJson() {
    var output = new core.Map();

    if (allowed != null) {
      output["allowed"] = allowed.map((allowedItem) => allowedItem.toJson()).toList();
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceRanges != null) {
      output["sourceRanges"] = sourceRanges.toList();
    }
    if (sourceTags != null) {
      output["sourceTags"] = sourceTags.toList();
    }
    if (targetTags != null) {
      output["targetTags"] = targetTags.toList();
    }

    return output;
  }

  /** Return String representation of Firewall */
  core.String toString() => JSON.encode(this.toJson());

}

class FirewallAllowed {

  /** Required; this is the IP protocol that is allowed for this rule. This can either be a well known protocol string (tcp, udp or icmp) or the IP protocol number. */
  core.String IPProtocol;

  /** An optional list of ports which are allowed. It is an error to specify this for any protocol that isn't UDP or TCP. Each entry must be either an integer or a range. If not specified, connections through any port are allowed.

Example inputs include: ["22"], ["80","443"] and ["12345-12349"]. */
  core.List<core.String> ports;

  /** Create new FirewallAllowed from JSON data */
  FirewallAllowed.fromJson(core.Map json) {
    if (json.containsKey("IPProtocol")) {
      IPProtocol = json["IPProtocol"];
    }
    if (json.containsKey("ports")) {
      ports = json["ports"].toList();
    }
  }

  /** Create JSON Object for FirewallAllowed */
  core.Map toJson() {
    var output = new core.Map();

    if (IPProtocol != null) {
      output["IPProtocol"] = IPProtocol;
    }
    if (ports != null) {
      output["ports"] = ports.toList();
    }

    return output;
  }

  /** Return String representation of FirewallAllowed */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of firewall resources. */
class FirewallList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The firewall resources. */
  core.List<Firewall> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new FirewallList from JSON data */
  FirewallList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Firewall.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for FirewallList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of FirewallList */
  core.String toString() => JSON.encode(this.toJson());

}

/** A ForwardingRule resource. A ForwardingRule resource specifies which pool of target VMs to forward a packet to if it matches the given [IPAddress, IPProtocol, portRange] tuple. */
class ForwardingRule {

  /** Value of the reserved IP address that this forwarding rule is serving on behalf of. The address resource must live in the same region as the forwarding rule. If left empty (default value), an ephemeral IP will be assigned. */
  core.String IPAddress;

  /** The IP protocol to which this rule applies, can be either 'TCP' or 'UDP' (If left empty, will use TCP by default). */
  core.String IPProtocol;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** If 'IPProtocol' is 'TCP' or 'UDP', only packets addressed to ports in the specified range will be forwarded to 'target'. If left empty (default value), all ports are forwarded. Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint port ranges. */
  core.String portRange;

  /** URL of the region where the forwarding rule resides (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** The URL of the target resource to receive the matched traffic. It must live in the same region as this forwarding rule. */
  core.String target;

  /** Create new ForwardingRule from JSON data */
  ForwardingRule.fromJson(core.Map json) {
    if (json.containsKey("IPAddress")) {
      IPAddress = json["IPAddress"];
    }
    if (json.containsKey("IPProtocol")) {
      IPProtocol = json["IPProtocol"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("portRange")) {
      portRange = json["portRange"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("target")) {
      target = json["target"];
    }
  }

  /** Create JSON Object for ForwardingRule */
  core.Map toJson() {
    var output = new core.Map();

    if (IPAddress != null) {
      output["IPAddress"] = IPAddress;
    }
    if (IPProtocol != null) {
      output["IPProtocol"] = IPProtocol;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (portRange != null) {
      output["portRange"] = portRange;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (target != null) {
      output["target"] = target;
    }

    return output;
  }

  /** Return String representation of ForwardingRule */
  core.String toString() => JSON.encode(this.toJson());

}

class ForwardingRuleAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped forwarding rule lists. */
  core.Map<core.String, ForwardingRulesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new ForwardingRuleAggregatedList from JSON data */
  ForwardingRuleAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new ForwardingRulesScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ForwardingRuleAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ForwardingRuleAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of ForwardingRule resources. */
class ForwardingRuleList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The ForwardingRule resources. */
  core.List<ForwardingRule> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new ForwardingRuleList from JSON data */
  ForwardingRuleList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new ForwardingRule.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ForwardingRuleList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ForwardingRuleList */
  core.String toString() => JSON.encode(this.toJson());

}

class ForwardingRulesScopedList {

  /** List of forwarding rules contained in this scope. */
  core.List<ForwardingRule> forwardingRules;

  /** Informational warning which replaces the list of forwarding rules when the list is empty. */
  ForwardingRulesScopedListWarning warning;

  /** Create new ForwardingRulesScopedList from JSON data */
  ForwardingRulesScopedList.fromJson(core.Map json) {
    if (json.containsKey("forwardingRules")) {
      forwardingRules = json["forwardingRules"].map((forwardingRulesItem) => new ForwardingRule.fromJson(forwardingRulesItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new ForwardingRulesScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for ForwardingRulesScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (forwardingRules != null) {
      output["forwardingRules"] = forwardingRules.map((forwardingRulesItem) => forwardingRulesItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of ForwardingRulesScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of forwarding rules when the list is empty. */
class ForwardingRulesScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<ForwardingRulesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new ForwardingRulesScopedListWarning from JSON data */
  ForwardingRulesScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new ForwardingRulesScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for ForwardingRulesScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of ForwardingRulesScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class ForwardingRulesScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new ForwardingRulesScopedListWarningData from JSON data */
  ForwardingRulesScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ForwardingRulesScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ForwardingRulesScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

class HealthCheckReference {

  core.String healthCheck;

  /** Create new HealthCheckReference from JSON data */
  HealthCheckReference.fromJson(core.Map json) {
    if (json.containsKey("healthCheck")) {
      healthCheck = json["healthCheck"];
    }
  }

  /** Create JSON Object for HealthCheckReference */
  core.Map toJson() {
    var output = new core.Map();

    if (healthCheck != null) {
      output["healthCheck"] = healthCheck;
    }

    return output;
  }

  /** Return String representation of HealthCheckReference */
  core.String toString() => JSON.encode(this.toJson());

}

class HealthStatus {

  /** Health state of the instance. */
  core.String healthState;

  /** URL of the instance resource. */
  core.String instance;

  /** The IP address represented by this resource. */
  core.String ipAddress;

  /** Create new HealthStatus from JSON data */
  HealthStatus.fromJson(core.Map json) {
    if (json.containsKey("healthState")) {
      healthState = json["healthState"];
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("ipAddress")) {
      ipAddress = json["ipAddress"];
    }
  }

  /** Create JSON Object for HealthStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (healthState != null) {
      output["healthState"] = healthState;
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (ipAddress != null) {
      output["ipAddress"] = ipAddress;
    }

    return output;
  }

  /** Return String representation of HealthStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** An HttpHealthCheck resource. This resource defines a template for how individual VMs should be checked for health, via HTTP. */
class HttpHealthCheck {

  /** How often (in seconds) to send a health check. The default value is 5 seconds. */
  core.int checkIntervalSec;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** A so-far unhealthy VM will be marked healthy after this many consecutive successes. The default value is 2. */
  core.int healthyThreshold;

  /** The value of the host header in the HTTP health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used. */
  core.String host;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** The TCP port number for the HTTP health check request. The default value is 80. */
  core.int port;

  /** The request path of the HTTP health check request. The default value is "/". */
  core.String requestPath;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** How long (in seconds) to wait before claiming failure. The default value is 5 seconds. */
  core.int timeoutSec;

  /** A so-far healthy VM will be marked unhealthy after this many consecutive failures. The default value is 2. */
  core.int unhealthyThreshold;

  /** Create new HttpHealthCheck from JSON data */
  HttpHealthCheck.fromJson(core.Map json) {
    if (json.containsKey("checkIntervalSec")) {
      checkIntervalSec = json["checkIntervalSec"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("healthyThreshold")) {
      healthyThreshold = json["healthyThreshold"];
    }
    if (json.containsKey("host")) {
      host = json["host"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("port")) {
      port = json["port"];
    }
    if (json.containsKey("requestPath")) {
      requestPath = json["requestPath"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("timeoutSec")) {
      timeoutSec = json["timeoutSec"];
    }
    if (json.containsKey("unhealthyThreshold")) {
      unhealthyThreshold = json["unhealthyThreshold"];
    }
  }

  /** Create JSON Object for HttpHealthCheck */
  core.Map toJson() {
    var output = new core.Map();

    if (checkIntervalSec != null) {
      output["checkIntervalSec"] = checkIntervalSec;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (healthyThreshold != null) {
      output["healthyThreshold"] = healthyThreshold;
    }
    if (host != null) {
      output["host"] = host;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (port != null) {
      output["port"] = port;
    }
    if (requestPath != null) {
      output["requestPath"] = requestPath;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (timeoutSec != null) {
      output["timeoutSec"] = timeoutSec;
    }
    if (unhealthyThreshold != null) {
      output["unhealthyThreshold"] = unhealthyThreshold;
    }

    return output;
  }

  /** Return String representation of HttpHealthCheck */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of HttpHealthCheck resources. */
class HttpHealthCheckList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The HttpHealthCheck resources. */
  core.List<HttpHealthCheck> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new HttpHealthCheckList from JSON data */
  HttpHealthCheckList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new HttpHealthCheck.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for HttpHealthCheckList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of HttpHealthCheckList */
  core.String toString() => JSON.encode(this.toJson());

}

/** A disk image resource. */
class Image {

  /** Size of the image tar.gz archive stored in Google Cloud Storage (in bytes). */
  core.int archiveSizeBytes;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this image. */
  DeprecationStatus deprecated;

  /** Textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** An optional URL of the preferred kernel for use with this disk image. If not specified, a server defined default kernel will be used. */
  core.String preferredKernel;

  /** The raw disk image parameters. */
  ImageRawDisk rawDisk;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Must be "RAW"; provided by the client when the disk image is created. */
  core.String sourceType;

  /** Status of the image (output only). It will be one of the following READY - after image has been successfully created and is ready for use FAILED - if creating the image fails for some reason PENDING - the image creation is in progress An image can be used to create other resources suck as instances only after the image has been successfully created and the status is set to READY. */
  core.String status;

  /** Create new Image from JSON data */
  Image.fromJson(core.Map json) {
    if (json.containsKey("archiveSizeBytes")) {
      archiveSizeBytes = (json["archiveSizeBytes"] is core.String) ? core.int.parse(json["archiveSizeBytes"]) : json["archiveSizeBytes"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("preferredKernel")) {
      preferredKernel = json["preferredKernel"];
    }
    if (json.containsKey("rawDisk")) {
      rawDisk = new ImageRawDisk.fromJson(json["rawDisk"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceType")) {
      sourceType = json["sourceType"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Image */
  core.Map toJson() {
    var output = new core.Map();

    if (archiveSizeBytes != null) {
      output["archiveSizeBytes"] = archiveSizeBytes;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (preferredKernel != null) {
      output["preferredKernel"] = preferredKernel;
    }
    if (rawDisk != null) {
      output["rawDisk"] = rawDisk.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceType != null) {
      output["sourceType"] = sourceType;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Image */
  core.String toString() => JSON.encode(this.toJson());

}

/** The raw disk image parameters. */
class ImageRawDisk {

  /** The format used to encode and transmit the block device. Should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created. */
  core.String containerType;

  /** An optional SHA1 checksum of the disk image before unpackaging; provided by the client when the disk image is created. */
  core.String sha1Checksum;

  /** The full Google Cloud Storage URL where the disk image is stored; provided by the client when the disk image is created. */
  core.String source;

  /** Create new ImageRawDisk from JSON data */
  ImageRawDisk.fromJson(core.Map json) {
    if (json.containsKey("containerType")) {
      containerType = json["containerType"];
    }
    if (json.containsKey("sha1Checksum")) {
      sha1Checksum = json["sha1Checksum"];
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
  }

  /** Create JSON Object for ImageRawDisk */
  core.Map toJson() {
    var output = new core.Map();

    if (containerType != null) {
      output["containerType"] = containerType;
    }
    if (sha1Checksum != null) {
      output["sha1Checksum"] = sha1Checksum;
    }
    if (source != null) {
      output["source"] = source;
    }

    return output;
  }

  /** Return String representation of ImageRawDisk */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of disk image resources. */
class ImageList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The disk image resources. */
  core.List<Image> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new ImageList from JSON data */
  ImageList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Image.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ImageList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ImageList */
  core.String toString() => JSON.encode(this.toJson());

}

/** An instance resource. */
class Instance {

  /** Allows this instance to send packets with source IP addresses other than its own and receive packets with destination IP addresses other than its own. If this instance will be used as an IP gateway or it will be set as the next-hop in a Route resource, say true. If unsure, leave this set to false. */
  core.bool canIpForward;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Array of disks associated with this instance. Persistent disks must be created before you can assign them. */
  core.List<AttachedDisk> disks;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** An optional URL of the disk image resource to be installed on this instance; provided by the client when the instance is created. Alternatively to passing the image, the client may choose to boot from a persistent disk, by setting boot=true flag on one of the entries in disks[] collection. */
  core.String image;

  /** URL of the kernel resource to use when booting. In case of booting from persistent disk, this parameter is required. When booting from a disk image, it is optional, but may be provided to use a different kernel than the one associated with the image. */
  core.String kernel;

  /** Type of the resource. */
  core.String kind;

  /** URL of the machine type resource describing which machine type to use to host the instance; provided by the client when the instance is created. */
  core.String machineType;

  /** Metadata key/value pairs assigned to this instance. Consists of custom metadata or predefined keys; see Instance documentation for more information. */
  Metadata metadata;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** Array of configurations for this interface. This specifies how this interface is configured to interact with other network services, such as connecting to the internet. Currently, ONE_TO_ONE_NAT is the only access config supported. If there are no accessConfigs specified, then this instance will have no external internet access. */
  core.List<NetworkInterface> networkInterfaces;

  /** Scheduling options for this instance. */
  Scheduling scheduling;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** A list of service accounts each with specified scopes, for which access tokens are to be made available to the instance through metadata queries. */
  core.List<ServiceAccount> serviceAccounts;

  /** Instance status. One of the following values: "PROVISIONING", "STAGING", "RUNNING", "STOPPING", "STOPPED", "TERMINATED" (output only). */
  core.String status;

  /** An optional, human-readable explanation of the status (output only). */
  core.String statusMessage;

  /** A list of tags to be applied to this instance. Used to identify valid sources or targets for network firewalls. Provided by the client on instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. */
  Tags tags;

  /** URL of the zone where the instance resides (output only). */
  core.String zone;

  /** Create new Instance from JSON data */
  Instance.fromJson(core.Map json) {
    if (json.containsKey("canIpForward")) {
      canIpForward = json["canIpForward"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("disks")) {
      disks = json["disks"].map((disksItem) => new AttachedDisk.fromJson(disksItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = json["image"];
    }
    if (json.containsKey("kernel")) {
      kernel = json["kernel"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("machineType")) {
      machineType = json["machineType"];
    }
    if (json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("networkInterfaces")) {
      networkInterfaces = json["networkInterfaces"].map((networkInterfacesItem) => new NetworkInterface.fromJson(networkInterfacesItem)).toList();
    }
    if (json.containsKey("scheduling")) {
      scheduling = new Scheduling.fromJson(json["scheduling"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("serviceAccounts")) {
      serviceAccounts = json["serviceAccounts"].map((serviceAccountsItem) => new ServiceAccount.fromJson(serviceAccountsItem)).toList();
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("statusMessage")) {
      statusMessage = json["statusMessage"];
    }
    if (json.containsKey("tags")) {
      tags = new Tags.fromJson(json["tags"]);
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Instance */
  core.Map toJson() {
    var output = new core.Map();

    if (canIpForward != null) {
      output["canIpForward"] = canIpForward;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (disks != null) {
      output["disks"] = disks.map((disksItem) => disksItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image;
    }
    if (kernel != null) {
      output["kernel"] = kernel;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (machineType != null) {
      output["machineType"] = machineType;
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (networkInterfaces != null) {
      output["networkInterfaces"] = networkInterfaces.map((networkInterfacesItem) => networkInterfacesItem.toJson()).toList();
    }
    if (scheduling != null) {
      output["scheduling"] = scheduling.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (serviceAccounts != null) {
      output["serviceAccounts"] = serviceAccounts.map((serviceAccountsItem) => serviceAccountsItem.toJson()).toList();
    }
    if (status != null) {
      output["status"] = status;
    }
    if (statusMessage != null) {
      output["statusMessage"] = statusMessage;
    }
    if (tags != null) {
      output["tags"] = tags.toJson();
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Instance */
  core.String toString() => JSON.encode(this.toJson());

}

class InstanceAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped instance lists. */
  core.Map<core.String, InstancesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new InstanceAggregatedList from JSON data */
  InstanceAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new InstancesScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for InstanceAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of InstanceAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of instance resources. */
class InstanceList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A list of instance resources. */
  core.List<Instance> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new InstanceList from JSON data */
  InstanceList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Instance.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for InstanceList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of InstanceList */
  core.String toString() => JSON.encode(this.toJson());

}

class InstanceReference {

  core.String instance;

  /** Create new InstanceReference from JSON data */
  InstanceReference.fromJson(core.Map json) {
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
  }

  /** Create JSON Object for InstanceReference */
  core.Map toJson() {
    var output = new core.Map();

    if (instance != null) {
      output["instance"] = instance;
    }

    return output;
  }

  /** Return String representation of InstanceReference */
  core.String toString() => JSON.encode(this.toJson());

}

class InstancesScopedList {

  /** List of instances contained in this scope. */
  core.List<Instance> instances;

  /** Informational warning which replaces the list of instances when the list is empty. */
  InstancesScopedListWarning warning;

  /** Create new InstancesScopedList from JSON data */
  InstancesScopedList.fromJson(core.Map json) {
    if (json.containsKey("instances")) {
      instances = json["instances"].map((instancesItem) => new Instance.fromJson(instancesItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new InstancesScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for InstancesScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (instances != null) {
      output["instances"] = instances.map((instancesItem) => instancesItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of InstancesScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of instances when the list is empty. */
class InstancesScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<InstancesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new InstancesScopedListWarning from JSON data */
  InstancesScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new InstancesScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for InstancesScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of InstancesScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class InstancesScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new InstancesScopedListWarningData from JSON data */
  InstancesScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for InstancesScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of InstancesScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

/** A kernel resource. */
class Kernel {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this kernel. */
  DeprecationStatus deprecated;

  /** An optional textual description of the resource. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource. */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Create new Kernel from JSON data */
  Kernel.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Kernel */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Kernel */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of kernel resources. */
class KernelList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The kernel resources. */
  core.List<Kernel> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new KernelList from JSON data */
  KernelList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Kernel.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for KernelList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of KernelList */
  core.String toString() => JSON.encode(this.toJson());

}

/** A machine type resource. */
class MachineType {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this machine type. */
  DeprecationStatus deprecated;

  /** An optional textual description of the resource. */
  core.String description;

  /** Count of CPUs exposed to the instance. */
  core.int guestCpus;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Space allotted for the image, defined in GB. */
  core.int imageSpaceGb;

  /** Type of the resource. */
  core.String kind;

  /** Maximum persistent disks allowed. */
  core.int maximumPersistentDisks;

  /** Maximum total persistent disks size (GB) allowed. */
  core.int maximumPersistentDisksSizeGb;

  /** Physical memory assigned to the instance, defined in MB. */
  core.int memoryMb;

  /** Name of the resource. */
  core.String name;

  /** List of extended scratch disks assigned to the instance. */
  core.List<MachineTypeScratchDisks> scratchDisks;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Url of the zone where the machine type resides (output only). */
  core.String zone;

  /** Create new MachineType from JSON data */
  MachineType.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("guestCpus")) {
      guestCpus = json["guestCpus"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("imageSpaceGb")) {
      imageSpaceGb = json["imageSpaceGb"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maximumPersistentDisks")) {
      maximumPersistentDisks = json["maximumPersistentDisks"];
    }
    if (json.containsKey("maximumPersistentDisksSizeGb")) {
      maximumPersistentDisksSizeGb = (json["maximumPersistentDisksSizeGb"] is core.String) ? core.int.parse(json["maximumPersistentDisksSizeGb"]) : json["maximumPersistentDisksSizeGb"];
    }
    if (json.containsKey("memoryMb")) {
      memoryMb = json["memoryMb"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("scratchDisks")) {
      scratchDisks = json["scratchDisks"].map((scratchDisksItem) => new MachineTypeScratchDisks.fromJson(scratchDisksItem)).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for MachineType */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (guestCpus != null) {
      output["guestCpus"] = guestCpus;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (imageSpaceGb != null) {
      output["imageSpaceGb"] = imageSpaceGb;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maximumPersistentDisks != null) {
      output["maximumPersistentDisks"] = maximumPersistentDisks;
    }
    if (maximumPersistentDisksSizeGb != null) {
      output["maximumPersistentDisksSizeGb"] = maximumPersistentDisksSizeGb;
    }
    if (memoryMb != null) {
      output["memoryMb"] = memoryMb;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (scratchDisks != null) {
      output["scratchDisks"] = scratchDisks.map((scratchDisksItem) => scratchDisksItem.toJson()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of MachineType */
  core.String toString() => JSON.encode(this.toJson());

}

class MachineTypeScratchDisks {

  /** Size of the scratch disk, defined in GB. */
  core.int diskGb;

  /** Create new MachineTypeScratchDisks from JSON data */
  MachineTypeScratchDisks.fromJson(core.Map json) {
    if (json.containsKey("diskGb")) {
      diskGb = json["diskGb"];
    }
  }

  /** Create JSON Object for MachineTypeScratchDisks */
  core.Map toJson() {
    var output = new core.Map();

    if (diskGb != null) {
      output["diskGb"] = diskGb;
    }

    return output;
  }

  /** Return String representation of MachineTypeScratchDisks */
  core.String toString() => JSON.encode(this.toJson());

}

class MachineTypeAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped machine type lists. */
  core.Map<core.String, MachineTypesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new MachineTypeAggregatedList from JSON data */
  MachineTypeAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new MachineTypesScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for MachineTypeAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of MachineTypeAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of machine type resources. */
class MachineTypeList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The machine type resources. */
  core.List<MachineType> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new MachineTypeList from JSON data */
  MachineTypeList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new MachineType.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for MachineTypeList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of MachineTypeList */
  core.String toString() => JSON.encode(this.toJson());

}

class MachineTypesScopedList {

  /** List of machine types contained in this scope. */
  core.List<MachineType> machineTypes;

  /** Informational warning which replaces the list of machine types when the list is empty. */
  MachineTypesScopedListWarning warning;

  /** Create new MachineTypesScopedList from JSON data */
  MachineTypesScopedList.fromJson(core.Map json) {
    if (json.containsKey("machineTypes")) {
      machineTypes = json["machineTypes"].map((machineTypesItem) => new MachineType.fromJson(machineTypesItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new MachineTypesScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for MachineTypesScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (machineTypes != null) {
      output["machineTypes"] = machineTypes.map((machineTypesItem) => machineTypesItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of MachineTypesScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of machine types when the list is empty. */
class MachineTypesScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<MachineTypesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new MachineTypesScopedListWarning from JSON data */
  MachineTypesScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new MachineTypesScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for MachineTypesScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of MachineTypesScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class MachineTypesScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new MachineTypesScopedListWarningData from JSON data */
  MachineTypesScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for MachineTypesScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of MachineTypesScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

/** A metadata key/value entry. */
class Metadata {

  /** Fingerprint of this resource. A hash of the metadata's contents. This field is used for optimistic locking. An up-to-date metadata fingerprint must be provided in order to modify metadata. */
  core.String fingerprint;

  /** Array of key/value pairs. The total size of all keys and values must be less than 512 KB. */
  core.List<MetadataItems> items;

  /** Type of the resource. */
  core.String kind;

  /** Create new Metadata from JSON data */
  Metadata.fromJson(core.Map json) {
    if (json.containsKey("fingerprint")) {
      fingerprint = json["fingerprint"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new MetadataItems.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Metadata */
  core.Map toJson() {
    var output = new core.Map();

    if (fingerprint != null) {
      output["fingerprint"] = fingerprint;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Metadata */
  core.String toString() => JSON.encode(this.toJson());

}

class MetadataItems {

  /** Key for the metadata entry. Keys must conform to the following regexp: [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project. */
  core.String key;

  /** Value for the metadata entry. These are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on values is that their size must be less than or equal to 32768 bytes. */
  core.String value;

  /** Create new MetadataItems from JSON data */
  MetadataItems.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for MetadataItems */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of MetadataItems */
  core.String toString() => JSON.encode(this.toJson());

}

/** A network resource. */
class Network {

  /** Required; The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created. */
  core.String IPv4Range;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** An optional address that is used for default routing to other networks. This must be within the range specified by IPv4Range, and is typically the first usable address in that range. If not specified, the default value is the first usable address in IPv4Range. */
  core.String gatewayIPv4;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Create new Network from JSON data */
  Network.fromJson(core.Map json) {
    if (json.containsKey("IPv4Range")) {
      IPv4Range = json["IPv4Range"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("gatewayIPv4")) {
      gatewayIPv4 = json["gatewayIPv4"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Network */
  core.Map toJson() {
    var output = new core.Map();

    if (IPv4Range != null) {
      output["IPv4Range"] = IPv4Range;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (gatewayIPv4 != null) {
      output["gatewayIPv4"] = gatewayIPv4;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Network */
  core.String toString() => JSON.encode(this.toJson());

}

/** A network interface resource attached to an instance. */
class NetworkInterface {

  /** Array of configurations for this interface. This specifies how this interface is configured to interact with other network services, such as connecting to the internet. Currently, ONE_TO_ONE_NAT is the only access config supported. If there are no accessConfigs specified, then this instance will have no external internet access. */
  core.List<AccessConfig> accessConfigs;

  /** Name of the network interface, determined by the server; for network devices, these are e.g. eth0, eth1, etc. (output only). */
  core.String name;

  /** URL of the network resource attached to this interface. */
  core.String network;

  /** An optional IPV4 internal network address assigned to the instance for this network interface (output only). */
  core.String networkIP;

  /** Create new NetworkInterface from JSON data */
  NetworkInterface.fromJson(core.Map json) {
    if (json.containsKey("accessConfigs")) {
      accessConfigs = json["accessConfigs"].map((accessConfigsItem) => new AccessConfig.fromJson(accessConfigsItem)).toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("networkIP")) {
      networkIP = json["networkIP"];
    }
  }

  /** Create JSON Object for NetworkInterface */
  core.Map toJson() {
    var output = new core.Map();

    if (accessConfigs != null) {
      output["accessConfigs"] = accessConfigs.map((accessConfigsItem) => accessConfigsItem.toJson()).toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (networkIP != null) {
      output["networkIP"] = networkIP;
    }

    return output;
  }

  /** Return String representation of NetworkInterface */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of network resources. */
class NetworkList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The network resources. */
  core.List<Network> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new NetworkList from JSON data */
  NetworkList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Network.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for NetworkList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of NetworkList */
  core.String toString() => JSON.encode(this.toJson());

}

/** An operation resource, used to manage asynchronous API requests. */
class Operation {

  /** An optional identifier specified by the client when the mutation was initiated. Must be unique for all operation resources in the project (output only). */
  core.String clientOperationId;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The time that this operation was completed. This is in RFC 3339 format (output only). */
  core.String endTime;

  /** If errors occurred during processing of this operation, this field will be populated (output only). */
  OperationError error;

  /** If operation fails, the HTTP error message returned, e.g. NOT FOUND. (output only). */
  core.String httpErrorMessage;

  /** If operation fails, the HTTP error status code returned, e.g. 404. (output only). */
  core.int httpErrorStatusCode;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The time that this operation was requested. This is in RFC 3339 format (output only). */
  core.String insertTime;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource (output only). */
  core.String name;

  /** Type of the operation. Examples include "insert", "update", and "delete" (output only). */
  core.String operationType;

  /** An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess at when the operation will be complete. This number should be monotonically increasing as the operation progresses (output only). */
  core.int progress;

  /** URL of the region where the operation resides (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** The time that this operation was started by the server. This is in RFC 3339 format (output only). */
  core.String startTime;

  /** Status of the operation. Can be one of the following: "PENDING", "RUNNING", or "DONE" (output only). */
  core.String status;

  /** An optional textual description of the current status of the operation (output only). */
  core.String statusMessage;

  /** Unique target id which identifies a particular incarnation of the target (output only). */
  core.String targetId;

  /** URL of the resource the operation is mutating (output only). */
  core.String targetLink;

  /** User who requested the operation, for example "user@example.com" (output only). */
  core.String user;

  /** If warning messages generated during processing of this operation, this field will be populated (output only). */
  core.List<OperationWarnings> warnings;

  /** URL of the zone where the operation resides (output only). */
  core.String zone;

  /** Create new Operation from JSON data */
  Operation.fromJson(core.Map json) {
    if (json.containsKey("clientOperationId")) {
      clientOperationId = json["clientOperationId"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("error")) {
      error = new OperationError.fromJson(json["error"]);
    }
    if (json.containsKey("httpErrorMessage")) {
      httpErrorMessage = json["httpErrorMessage"];
    }
    if (json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = json["httpErrorStatusCode"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("insertTime")) {
      insertTime = json["insertTime"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("operationType")) {
      operationType = json["operationType"];
    }
    if (json.containsKey("progress")) {
      progress = json["progress"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("statusMessage")) {
      statusMessage = json["statusMessage"];
    }
    if (json.containsKey("targetId")) {
      targetId = json["targetId"];
    }
    if (json.containsKey("targetLink")) {
      targetLink = json["targetLink"];
    }
    if (json.containsKey("user")) {
      user = json["user"];
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].map((warningsItem) => new OperationWarnings.fromJson(warningsItem)).toList();
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Operation */
  core.Map toJson() {
    var output = new core.Map();

    if (clientOperationId != null) {
      output["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (error != null) {
      output["error"] = error.toJson();
    }
    if (httpErrorMessage != null) {
      output["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      output["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (insertTime != null) {
      output["insertTime"] = insertTime;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (operationType != null) {
      output["operationType"] = operationType;
    }
    if (progress != null) {
      output["progress"] = progress;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (statusMessage != null) {
      output["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      output["targetId"] = targetId;
    }
    if (targetLink != null) {
      output["targetLink"] = targetLink;
    }
    if (user != null) {
      output["user"] = user;
    }
    if (warnings != null) {
      output["warnings"] = warnings.map((warningsItem) => warningsItem.toJson()).toList();
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Operation */
  core.String toString() => JSON.encode(this.toJson());

}

/** If errors occurred during processing of this operation, this field will be populated (output only). */
class OperationError {

  /** The array of errors encountered while processing this operation. */
  core.List<OperationErrorErrors> errors;

  /** Create new OperationError from JSON data */
  OperationError.fromJson(core.Map json) {
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new OperationErrorErrors.fromJson(errorsItem)).toList();
    }
  }

  /** Create JSON Object for OperationError */
  core.Map toJson() {
    var output = new core.Map();

    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of OperationError */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationErrorErrors {

  /** The error type identifier for this error. */
  core.String code;

  /** Indicates the field in the request which caused the error. This property is optional. */
  core.String location;

  /** An optional, human-readable error message. */
  core.String message;

  /** Create new OperationErrorErrors from JSON data */
  OperationErrorErrors.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationErrorErrors */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationErrorErrors */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationWarnings {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<OperationWarningsData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new OperationWarnings from JSON data */
  OperationWarnings.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new OperationWarningsData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationWarnings */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationWarnings */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationWarningsData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new OperationWarningsData from JSON data */
  OperationWarningsData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for OperationWarningsData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of OperationWarningsData */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped operation lists. */
  core.Map<core.String, OperationsScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new OperationAggregatedList from JSON data */
  OperationAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new OperationsScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for OperationAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of OperationAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of operation resources. */
class OperationList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The operation resources. */
  core.List<Operation> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new OperationList from JSON data */
  OperationList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Operation.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for OperationList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of OperationList */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationsScopedList {

  /** List of operations contained in this scope. */
  core.List<Operation> operations;

  /** Informational warning which replaces the list of operations when the list is empty. */
  OperationsScopedListWarning warning;

  /** Create new OperationsScopedList from JSON data */
  OperationsScopedList.fromJson(core.Map json) {
    if (json.containsKey("operations")) {
      operations = json["operations"].map((operationsItem) => new Operation.fromJson(operationsItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new OperationsScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for OperationsScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (operations != null) {
      output["operations"] = operations.map((operationsItem) => operationsItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of OperationsScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of operations when the list is empty. */
class OperationsScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<OperationsScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new OperationsScopedListWarning from JSON data */
  OperationsScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new OperationsScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationsScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationsScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationsScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new OperationsScopedListWarningData from JSON data */
  OperationsScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for OperationsScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of OperationsScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

/** A project resource. Projects can be created only in the APIs Console. Unless marked otherwise, values can only be modified in the console. */
class Project {

  /** Metadata key/value pairs available to all instances contained in this project. */
  Metadata commonInstanceMetadata;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource. */
  core.String name;

  /** Quotas assigned to this project. */
  core.List<Quota> quotas;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Create new Project from JSON data */
  Project.fromJson(core.Map json) {
    if (json.containsKey("commonInstanceMetadata")) {
      commonInstanceMetadata = new Metadata.fromJson(json["commonInstanceMetadata"]);
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("quotas")) {
      quotas = json["quotas"].map((quotasItem) => new Quota.fromJson(quotasItem)).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Project */
  core.Map toJson() {
    var output = new core.Map();

    if (commonInstanceMetadata != null) {
      output["commonInstanceMetadata"] = commonInstanceMetadata.toJson();
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (quotas != null) {
      output["quotas"] = quotas.map((quotasItem) => quotasItem.toJson()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Project */
  core.String toString() => JSON.encode(this.toJson());

}

/** A quotas entry. */
class Quota {

  /** Quota limit for this metric. */
  core.num limit;

  /** Name of the quota metric. */
  core.String metric;

  /** Current usage of this metric. */
  core.num usage;

  /** Create new Quota from JSON data */
  Quota.fromJson(core.Map json) {
    if (json.containsKey("limit")) {
      limit = json["limit"];
    }
    if (json.containsKey("metric")) {
      metric = json["metric"];
    }
    if (json.containsKey("usage")) {
      usage = json["usage"];
    }
  }

  /** Create JSON Object for Quota */
  core.Map toJson() {
    var output = new core.Map();

    if (limit != null) {
      output["limit"] = limit;
    }
    if (metric != null) {
      output["metric"] = metric;
    }
    if (usage != null) {
      output["usage"] = usage;
    }

    return output;
  }

  /** Return String representation of Quota */
  core.String toString() => JSON.encode(this.toJson());

}

/** Region resource. */
class Region {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this region. */
  DeprecationStatus deprecated;

  /** Textual description of the resource. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource. */
  core.String name;

  /** Quotas assigned to this region. */
  core.List<Quota> quotas;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Status of the region, "UP" or "DOWN". */
  core.String status;

  /** A list of zones homed in this region, in the form of resource URLs. */
  core.List<core.String> zones;

  /** Create new Region from JSON data */
  Region.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("quotas")) {
      quotas = json["quotas"].map((quotasItem) => new Quota.fromJson(quotasItem)).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("zones")) {
      zones = json["zones"].toList();
    }
  }

  /** Create JSON Object for Region */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (quotas != null) {
      output["quotas"] = quotas.map((quotasItem) => quotasItem.toJson()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (zones != null) {
      output["zones"] = zones.toList();
    }

    return output;
  }

  /** Return String representation of Region */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of region resources. */
class RegionList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The region resources. */
  core.List<Region> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new RegionList from JSON data */
  RegionList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Region.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for RegionList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of RegionList */
  core.String toString() => JSON.encode(this.toJson());

}

/** The route resource. A Route is a rule that specifies how certain packets should be handled by the virtual network. Routes are associated with VMs by tag and the set of Routes for a particular VM is called its routing table. For each packet leaving a VM, the system searches that VM's routing table for a single best matching Route. Routes match packets by destination IP address, preferring smaller or more specific ranges over larger ones. If there is a tie, the system selects the Route with the smallest priority value. If there is still a tie, it uses the layer three and four packet headers to select just one of the remaining matching Routes. The packet is then forwarded as specified by the next_hop field of the winning Route -- either to another VM destination, a VM gateway or a GCE operated gateway. Packets that do not match any Route in the sending VM's routing table will be dropped. */
class Route {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Which packets does this route apply to? */
  core.String destRange;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** URL of the network to which this route is applied; provided by the client when the route is created. */
  core.String network;

  /** The URL to a gateway that should handle matching packets. */
  core.String nextHopGateway;

  /** The URL to an instance that should handle matching packets. */
  core.String nextHopInstance;

  /** The network IP address of an instance that should handle matching packets. */
  core.String nextHopIp;

  /** The URL of the local network if it should handle matching packets. */
  core.String nextHopNetwork;

  /** Breaks ties between Routes of equal specificity. Routes with smaller values win when tied with routes with larger values. */
  core.int priority;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** A list of instance tags to which this route applies. */
  core.List<core.String> tags;

  /** If potential misconfigurations are detected for this route, this field will be populated with warning messages. */
  core.List<RouteWarnings> warnings;

  /** Create new Route from JSON data */
  Route.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("destRange")) {
      destRange = json["destRange"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("nextHopGateway")) {
      nextHopGateway = json["nextHopGateway"];
    }
    if (json.containsKey("nextHopInstance")) {
      nextHopInstance = json["nextHopInstance"];
    }
    if (json.containsKey("nextHopIp")) {
      nextHopIp = json["nextHopIp"];
    }
    if (json.containsKey("nextHopNetwork")) {
      nextHopNetwork = json["nextHopNetwork"];
    }
    if (json.containsKey("priority")) {
      priority = json["priority"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].map((warningsItem) => new RouteWarnings.fromJson(warningsItem)).toList();
    }
  }

  /** Create JSON Object for Route */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (destRange != null) {
      output["destRange"] = destRange;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (nextHopGateway != null) {
      output["nextHopGateway"] = nextHopGateway;
    }
    if (nextHopInstance != null) {
      output["nextHopInstance"] = nextHopInstance;
    }
    if (nextHopIp != null) {
      output["nextHopIp"] = nextHopIp;
    }
    if (nextHopNetwork != null) {
      output["nextHopNetwork"] = nextHopNetwork;
    }
    if (priority != null) {
      output["priority"] = priority;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }
    if (warnings != null) {
      output["warnings"] = warnings.map((warningsItem) => warningsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Route */
  core.String toString() => JSON.encode(this.toJson());

}

class RouteWarnings {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<RouteWarningsData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new RouteWarnings from JSON data */
  RouteWarnings.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new RouteWarningsData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for RouteWarnings */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of RouteWarnings */
  core.String toString() => JSON.encode(this.toJson());

}

class RouteWarningsData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new RouteWarningsData from JSON data */
  RouteWarningsData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for RouteWarningsData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of RouteWarningsData */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of route resources. */
class RouteList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The route resources. */
  core.List<Route> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new RouteList from JSON data */
  RouteList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Route.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for RouteList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of RouteList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Scheduling options for an Instance. */
class Scheduling {

  /** Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). */
  core.bool automaticRestart;

  /** How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance. */
  core.String onHostMaintenance;

  /** Create new Scheduling from JSON data */
  Scheduling.fromJson(core.Map json) {
    if (json.containsKey("automaticRestart")) {
      automaticRestart = json["automaticRestart"];
    }
    if (json.containsKey("onHostMaintenance")) {
      onHostMaintenance = json["onHostMaintenance"];
    }
  }

  /** Create JSON Object for Scheduling */
  core.Map toJson() {
    var output = new core.Map();

    if (automaticRestart != null) {
      output["automaticRestart"] = automaticRestart;
    }
    if (onHostMaintenance != null) {
      output["onHostMaintenance"] = onHostMaintenance;
    }

    return output;
  }

  /** Return String representation of Scheduling */
  core.String toString() => JSON.encode(this.toJson());

}

/** An instance serial console output. */
class SerialPortOutput {

  /** The contents of the console output. */
  core.String contents;

  /** Type of the resource. */
  core.String kind;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Create new SerialPortOutput from JSON data */
  SerialPortOutput.fromJson(core.Map json) {
    if (json.containsKey("contents")) {
      contents = json["contents"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for SerialPortOutput */
  core.Map toJson() {
    var output = new core.Map();

    if (contents != null) {
      output["contents"] = contents;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of SerialPortOutput */
  core.String toString() => JSON.encode(this.toJson());

}

/** A service account. */
class ServiceAccount {

  /** Email address of the service account. */
  core.String email;

  /** The list of scopes to be made available for this service account. */
  core.List<core.String> scopes;

  /** Create new ServiceAccount from JSON data */
  ServiceAccount.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("scopes")) {
      scopes = json["scopes"].toList();
    }
  }

  /** Create JSON Object for ServiceAccount */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (scopes != null) {
      output["scopes"] = scopes.toList();
    }

    return output;
  }

  /** Return String representation of ServiceAccount */
  core.String toString() => JSON.encode(this.toJson());

}

/** A persistent disk snapshot resource. */
class Snapshot {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** Size of the persistent disk snapshot, specified in GB (output only). */
  core.int diskSizeGb;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** The source disk used to create this snapshot. Once the source disk has been deleted from the system, this field will be cleared, and will not be set even if a disk with the same name has been re-created (output only). */
  core.String sourceDisk;

  /** The 'id' value of the disk used to create this snapshot. This value may be used to determine whether the snapshot was taken from the current or a previous instance of a given disk name. */
  core.String sourceDiskId;

  /** The status of the persistent disk snapshot (output only). */
  core.String status;

  /** A size of the the storage used by the snapshot. As snapshots share storage this number is expected to change with snapshot creation/deletion. */
  core.int storageBytes;

  /** An indicator whether storageBytes is in a stable state, or it is being adjusted as a result of shared storage reallocation. */
  core.String storageBytesStatus;

  /** Create new Snapshot from JSON data */
  Snapshot.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("diskSizeGb")) {
      diskSizeGb = (json["diskSizeGb"] is core.String) ? core.int.parse(json["diskSizeGb"]) : json["diskSizeGb"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceDisk")) {
      sourceDisk = json["sourceDisk"];
    }
    if (json.containsKey("sourceDiskId")) {
      sourceDiskId = json["sourceDiskId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("storageBytes")) {
      storageBytes = (json["storageBytes"] is core.String) ? core.int.parse(json["storageBytes"]) : json["storageBytes"];
    }
    if (json.containsKey("storageBytesStatus")) {
      storageBytesStatus = json["storageBytesStatus"];
    }
  }

  /** Create JSON Object for Snapshot */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (diskSizeGb != null) {
      output["diskSizeGb"] = diskSizeGb;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceDisk != null) {
      output["sourceDisk"] = sourceDisk;
    }
    if (sourceDiskId != null) {
      output["sourceDiskId"] = sourceDiskId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (storageBytes != null) {
      output["storageBytes"] = storageBytes;
    }
    if (storageBytesStatus != null) {
      output["storageBytesStatus"] = storageBytesStatus;
    }

    return output;
  }

  /** Return String representation of Snapshot */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of persistent disk snapshot resources. */
class SnapshotList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The persistent snapshot resources. */
  core.List<Snapshot> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new SnapshotList from JSON data */
  SnapshotList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Snapshot.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for SnapshotList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of SnapshotList */
  core.String toString() => JSON.encode(this.toJson());

}

/** A set of instance tags. */
class Tags {

  /** Fingerprint of this resource. A hash of the tags stored in this object. This field is used optimistic locking. An up-to-date tags fingerprint must be provided in order to modify tags. */
  core.String fingerprint;

  /** An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035. */
  core.List<core.String> items;

  /** Create new Tags from JSON data */
  Tags.fromJson(core.Map json) {
    if (json.containsKey("fingerprint")) {
      fingerprint = json["fingerprint"];
    }
    if (json.containsKey("items")) {
      items = json["items"].toList();
    }
  }

  /** Create JSON Object for Tags */
  core.Map toJson() {
    var output = new core.Map();

    if (fingerprint != null) {
      output["fingerprint"] = fingerprint;
    }
    if (items != null) {
      output["items"] = items.toList();
    }

    return output;
  }

  /** Return String representation of Tags */
  core.String toString() => JSON.encode(this.toJson());

}

/** A TargetPool resource. This resource defines a pool of VMs, associated HttpHealthCheck resources, and the fallback TargetPool. */
class TargetPool {

  /** This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its 'failoverRatio' field is properly set to a value between [0, 1].

'backupPool' and 'failoverRatio' together define the fallback behavior of the primary target pool: if the ratio of the healthy VMs in the primary pool is at or below 'failoverRatio', traffic arriving at the load-balanced IP will be directed to the backup pool.

In case where 'failoverRatio' and 'backupPool' are not set, or all the VMs in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy VMs with the best effort, or to all VMs when no VM is healthy. */
  core.String backupPool;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  core.String description;

  /** This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1].

If set, 'backupPool' must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy VMs in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool.

In case where 'failoverRatio' is not set or all the VMs in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy VMs with the best effort, or to all VMs when no VM is healthy. */
  core.num failoverRatio;

  /** A list of URLs to the HttpHealthCheck resource. A member VM in this pool is considered healthy if and only if all specified health checks pass. An empty list means all member VMs will be considered healthy at all times. */
  core.List<core.String> healthChecks;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A list of resource URLs to the member VMs serving this pool. They must live in zones contained in the same region as this pool. */
  core.List<core.String> instances;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  core.String name;

  /** URL of the region where the target pool resides (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Sesssion affinity option, must be one of the following values: 'NONE': Connections from the same client IP may go to any VM in the pool; 'CLIENT_IP': Connections from the same client IP will go to the same VM in the pool while that VM remains healthy. 'CLIENT_IP_PROTO': Connections from the same client IP with the same IP protocol will go to the same VM in the pool while that VM remains healthy. */
  core.String sessionAffinity;

  /** Create new TargetPool from JSON data */
  TargetPool.fromJson(core.Map json) {
    if (json.containsKey("backupPool")) {
      backupPool = json["backupPool"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("failoverRatio")) {
      failoverRatio = json["failoverRatio"];
    }
    if (json.containsKey("healthChecks")) {
      healthChecks = json["healthChecks"].toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("instances")) {
      instances = json["instances"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sessionAffinity")) {
      sessionAffinity = json["sessionAffinity"];
    }
  }

  /** Create JSON Object for TargetPool */
  core.Map toJson() {
    var output = new core.Map();

    if (backupPool != null) {
      output["backupPool"] = backupPool;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (failoverRatio != null) {
      output["failoverRatio"] = failoverRatio;
    }
    if (healthChecks != null) {
      output["healthChecks"] = healthChecks.toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (instances != null) {
      output["instances"] = instances.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sessionAffinity != null) {
      output["sessionAffinity"] = sessionAffinity;
    }

    return output;
  }

  /** Return String representation of TargetPool */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolAggregatedList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** A map of scoped target pool lists. */
  core.Map<core.String, TargetPoolsScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new TargetPoolAggregatedList from JSON data */
  TargetPoolAggregatedList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = _mapMap(json["items"], (itemsItem) => new TargetPoolsScopedList.fromJson(itemsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for TargetPoolAggregatedList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = _mapMap(items, (itemsItem) => itemsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of TargetPoolAggregatedList */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolInstanceHealth {

  core.List<HealthStatus> healthStatus;

  /** Type of resource. */
  core.String kind;

  /** Create new TargetPoolInstanceHealth from JSON data */
  TargetPoolInstanceHealth.fromJson(core.Map json) {
    if (json.containsKey("healthStatus")) {
      healthStatus = json["healthStatus"].map((healthStatusItem) => new HealthStatus.fromJson(healthStatusItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for TargetPoolInstanceHealth */
  core.Map toJson() {
    var output = new core.Map();

    if (healthStatus != null) {
      output["healthStatus"] = healthStatus.map((healthStatusItem) => healthStatusItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of TargetPoolInstanceHealth */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of TargetPool resources. */
class TargetPoolList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The TargetPool resources. */
  core.List<TargetPool> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new TargetPoolList from JSON data */
  TargetPoolList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new TargetPool.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for TargetPoolList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of TargetPoolList */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolsAddHealthCheckRequest {

  /** Health check URLs to be added to targetPool. */
  core.List<HealthCheckReference> healthChecks;

  /** Create new TargetPoolsAddHealthCheckRequest from JSON data */
  TargetPoolsAddHealthCheckRequest.fromJson(core.Map json) {
    if (json.containsKey("healthChecks")) {
      healthChecks = json["healthChecks"].map((healthChecksItem) => new HealthCheckReference.fromJson(healthChecksItem)).toList();
    }
  }

  /** Create JSON Object for TargetPoolsAddHealthCheckRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (healthChecks != null) {
      output["healthChecks"] = healthChecks.map((healthChecksItem) => healthChecksItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TargetPoolsAddHealthCheckRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolsAddInstanceRequest {

  /** URLs of the instances to be added to targetPool. */
  core.List<InstanceReference> instances;

  /** Create new TargetPoolsAddInstanceRequest from JSON data */
  TargetPoolsAddInstanceRequest.fromJson(core.Map json) {
    if (json.containsKey("instances")) {
      instances = json["instances"].map((instancesItem) => new InstanceReference.fromJson(instancesItem)).toList();
    }
  }

  /** Create JSON Object for TargetPoolsAddInstanceRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (instances != null) {
      output["instances"] = instances.map((instancesItem) => instancesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TargetPoolsAddInstanceRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolsRemoveHealthCheckRequest {

  /** Health check URLs to be removed from targetPool. */
  core.List<HealthCheckReference> healthChecks;

  /** Create new TargetPoolsRemoveHealthCheckRequest from JSON data */
  TargetPoolsRemoveHealthCheckRequest.fromJson(core.Map json) {
    if (json.containsKey("healthChecks")) {
      healthChecks = json["healthChecks"].map((healthChecksItem) => new HealthCheckReference.fromJson(healthChecksItem)).toList();
    }
  }

  /** Create JSON Object for TargetPoolsRemoveHealthCheckRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (healthChecks != null) {
      output["healthChecks"] = healthChecks.map((healthChecksItem) => healthChecksItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TargetPoolsRemoveHealthCheckRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolsRemoveInstanceRequest {

  /** URLs of the instances to be removed from targetPool. */
  core.List<InstanceReference> instances;

  /** Create new TargetPoolsRemoveInstanceRequest from JSON data */
  TargetPoolsRemoveInstanceRequest.fromJson(core.Map json) {
    if (json.containsKey("instances")) {
      instances = json["instances"].map((instancesItem) => new InstanceReference.fromJson(instancesItem)).toList();
    }
  }

  /** Create JSON Object for TargetPoolsRemoveInstanceRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (instances != null) {
      output["instances"] = instances.map((instancesItem) => instancesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TargetPoolsRemoveInstanceRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolsScopedList {

  /** List of target pools contained in this scope. */
  core.List<TargetPool> targetPools;

  /** Informational warning which replaces the list of addresses when the list is empty. */
  TargetPoolsScopedListWarning warning;

  /** Create new TargetPoolsScopedList from JSON data */
  TargetPoolsScopedList.fromJson(core.Map json) {
    if (json.containsKey("targetPools")) {
      targetPools = json["targetPools"].map((targetPoolsItem) => new TargetPool.fromJson(targetPoolsItem)).toList();
    }
    if (json.containsKey("warning")) {
      warning = new TargetPoolsScopedListWarning.fromJson(json["warning"]);
    }
  }

  /** Create JSON Object for TargetPoolsScopedList */
  core.Map toJson() {
    var output = new core.Map();

    if (targetPools != null) {
      output["targetPools"] = targetPools.map((targetPoolsItem) => targetPoolsItem.toJson()).toList();
    }
    if (warning != null) {
      output["warning"] = warning.toJson();
    }

    return output;
  }

  /** Return String representation of TargetPoolsScopedList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Informational warning which replaces the list of addresses when the list is empty. */
class TargetPoolsScopedListWarning {

  /** The warning type identifier for this warning. */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<TargetPoolsScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;

  /** Create new TargetPoolsScopedListWarning from JSON data */
  TargetPoolsScopedListWarning.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new TargetPoolsScopedListWarningData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for TargetPoolsScopedListWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of TargetPoolsScopedListWarning */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetPoolsScopedListWarningData {

  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;

  /** Create new TargetPoolsScopedListWarningData from JSON data */
  TargetPoolsScopedListWarningData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for TargetPoolsScopedListWarningData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of TargetPoolsScopedListWarningData */
  core.String toString() => JSON.encode(this.toJson());

}

class TargetReference {

  core.String target;

  /** Create new TargetReference from JSON data */
  TargetReference.fromJson(core.Map json) {
    if (json.containsKey("target")) {
      target = json["target"];
    }
  }

  /** Create JSON Object for TargetReference */
  core.Map toJson() {
    var output = new core.Map();

    if (target != null) {
      output["target"] = target;
    }

    return output;
  }

  /** Return String representation of TargetReference */
  core.String toString() => JSON.encode(this.toJson());

}

/** A zone resource. */
class Zone {

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this zone. */
  DeprecationStatus deprecated;

  /** Textual description of the resource. */
  core.String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Scheduled maintenance windows for the zone. When the zone is in a maintenance window, all resources which reside in the zone will be unavailable. */
  core.List<ZoneMaintenanceWindows> maintenanceWindows;

  /** Name of the resource. */
  core.String name;

  /** Full URL reference to the region which hosts the zone (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Status of the zone. "UP" or "DOWN". */
  core.String status;

  /** Create new Zone from JSON data */
  Zone.fromJson(core.Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maintenanceWindows")) {
      maintenanceWindows = json["maintenanceWindows"].map((maintenanceWindowsItem) => new ZoneMaintenanceWindows.fromJson(maintenanceWindowsItem)).toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Zone */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maintenanceWindows != null) {
      output["maintenanceWindows"] = maintenanceWindows.map((maintenanceWindowsItem) => maintenanceWindowsItem.toJson()).toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Zone */
  core.String toString() => JSON.encode(this.toJson());

}

class ZoneMaintenanceWindows {

  /** Begin time of the maintenance window, in RFC 3339 format. */
  core.String beginTime;

  /** Textual description of the maintenance window. */
  core.String description;

  /** End time of the maintenance window, in RFC 3339 format. */
  core.String endTime;

  /** Name of the maintenance window. */
  core.String name;

  /** Create new ZoneMaintenanceWindows from JSON data */
  ZoneMaintenanceWindows.fromJson(core.Map json) {
    if (json.containsKey("beginTime")) {
      beginTime = json["beginTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ZoneMaintenanceWindows */
  core.Map toJson() {
    var output = new core.Map();

    if (beginTime != null) {
      output["beginTime"] = beginTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ZoneMaintenanceWindows */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains a list of zone resources. */
class ZoneList {

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** The zone resources. */
  core.List<Zone> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /** Create new ZoneList from JSON data */
  ZoneList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Zone.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ZoneList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ZoneList */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
