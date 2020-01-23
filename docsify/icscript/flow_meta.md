# Another way to describe the FLOW

By Lifeng Li

Flow organization gets a lot input from different users. I would like to take this opportunite to show "another way to describe the FLOW".

## My Study

Flow tool, flowkit uses variable to define a step and give the step a name. After that you can give define some options for particular flow. This is just the data source, flowtool also includes some functions to do the operations on top of the flow, like put steps together, change step order, run the steps and etc.

mflowgen, an open source flow builder. It use yml file to describe the input and output and yml file also includes the operations.

## Another way

Q1: Why use Json?

Q2: Why define properties and compositions?

Q3: Why duplicate the name?

Q4: How to define the API?


```json
{
    "name": "flow_block_name"
}
```



## API rules

### Argument

- `-name <a/b/c>`
  - specify the target object, default is the first one.
- `-ls <category>`
  - it is an argument with parameter
  - when ls is the only argument, equal to "-ls *"
- `-get <key/key>`
  - it is an argument with parameter
  - Usually the parameter is the key separated by "/"
- `-set <key/key>`
  - it is an argument with parameter
  - must work with "val"
- `-add/mov < |newkey|key/key or key/key|newkey| >`
  - add keys before or after existing key
- `-del < key/key or key/key >`
  - add keys before or after existing key
- `-prop`
  - get properties, equal to "-get name/properties/`<prop>`"
- `val`
  - value working with other argumnet
